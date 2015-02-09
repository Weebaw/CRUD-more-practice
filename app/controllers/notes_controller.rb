class NotesController < ApplicationController
  def index
    @notes = Note.all
  end

  def new
    @note = Note.new
  end

  def create
    note_params = params.require(:note).permit(:date, :location, :description, :capacity, :requires_id)
    @note = Note.new(note_params)
    @note.save
    redirect_to note_path(@note),
    notice: "Your note was made, Yo"
  end

  def show
    @note = Note.find(params[:id])
  end

  def edit
    @note = Note.find(params[:id])
  end

  def update
    @note = Note.find(params[:id])
    note_params = params.require(:note).permit(:date, :location, :description, :capacity, :requires_id)
    @note.update(note_params)
    redirect_to note_path, notice: "Daaaaaamn G nice upgrade"
  end

  def destroy
    Note.find(params[:id]).destroy
    redirect_to notes_path, notice: "That Shit's Gone!!"
    Not
  end

end
