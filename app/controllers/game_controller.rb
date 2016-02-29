class GameController < ApplicationController
  before_action :authenticate_user! #, only: [:]
  
  def game
    zero_count_vocabs = VocabCount.where('counts = ?', 0)
    #zero_count_vocabs.sample
    #byebug
    if zero_count_vocabs.nil? or zero_count_vocabs.empty?
      @game = Game.find(params[:id] = Random.rand(1...60))
    else
      @game = Game.find(zero_count_vocabs.sample.word_id)
      # @game = Game.where((zero_count_vocabs[0].word_id).shuffle)
      #@game = Game.where(rand(zero_count_vocabs[0].word_id))
      #byebug
    end  
  end
 
 
 
  def update_counts
   
   VocabCount.where('counts > ?', 0).update_all("counts = counts - 1")
   
   v = VocabCount.find_or_create_by(:word_id => params[:wordid], :user_id => params[:userid]) 
   # byebug
   v[:counts] = params[:count]
   v.save
  
  
  
   redirect_to root_path
   
   # render root_path
  end

 
 
 
 
 
 
 
 
 #def game
 #    @wid=VocabCount.word_id([params[:integer]])
 #  VocabCount.where('counts = ?', 0)
 #  if VocabCount.where('counts = ?', 0).nil?
 #    @game = Game.find(params[:id] = Random.rand(1...60))
 #  else
 #    @game = Game.find_by(@wid)
 #  end  
 #end

 
  #if 
   # @game = VocabCount.find(params[:count] = 0) 
  #then
   # @game = 
   
   
  #def vocab_counts
  #  if @game == vocab_counts[:id]
  #     c = vocab_counts.find(params[:id])
  #     c.update(:counts => 10)
  #  end
  #end

  #def index
  #end

  #def create
  #end 
  
  
  
    
  # def update
  #  @update = VocabCount.where('counts > ?', '0').update_all(:counts => params[:count] - 1)
  # end
    
    
    #  VocabCount.find_by params[:vocab_id]
   #if @update = VocabCount.find(params[:count]) 
     #VocabCount.where(params[:count] - 1)
   #elsif @update = VocabCount.find(params[:count] === nil)
     #VocabCount.where(params[:count] === nil)
   #else
   
  
end