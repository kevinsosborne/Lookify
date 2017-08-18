package com.kevinosborne.lookify.services;

import java.util.List;

import org.springframework.stereotype.Service;

import com.kevinosborne.lookify.models.Playlist;
import com.kevinosborne.lookify.repository.PlaylistRepository;

@Service
public class PlaylistService {
	
private PlaylistRepository playlistRepository;

public PlaylistService(PlaylistRepository playlistRepository) {
	this.playlistRepository = playlistRepository;
}
	
	
	public List<Playlist> getPlaylist(){
		return (List<Playlist>) playlistRepository.findAll();
	}

	public void addPlaylist(Playlist playlist) {
		playlistRepository.save(playlist);
	}
	public Playlist getPlaylistById(Long id) {
		Playlist playlist = playlistRepository.findOne(id);
		return playlist;
	}
	public void delete(Long id) {
		playlistRepository.delete(id);
	}
	public List<Playlist> topSongs(){
		List<Playlist> top = playlistRepository.findTop10ByOrderByRatingDesc();
		return top;
	}
	public List<Playlist> artist(String search){
		return playlistRepository.findByArtistName(search);
	}
}
