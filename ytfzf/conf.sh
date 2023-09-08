# This is a sample config file, refer to ytfzf(5) for more information

# In the previous version of ytfzf this file had all the examples, with all defaults set,
# this has been changed because it made it impossible for us to change default values that were broken or causing bugs,
# as everyone used the default configuration file.
# we are now going to only have this sample config file, and the ytfzf(5) manual, which has explanation of every variable and function that can be set.

#a sample config below:

#Variables {{{
#ytdl_pref="248+bestaudio/best/write-subs/sub-langs en ,--all-subs sub-format ass/srt/best"
##scrape 1 video link per channel instead of the default 2
#sub_link_count=1
#show_thumbnails=1
##}}}
#
##Functions {{{
#external_menu () {
#    #use rofi instead of dmenu
#    rofi -dmenu -width 1500 -p "$1"
#}

#use vlc instead of mpv
#video_player () {
#    #check if detach is enabled
#    case "$is_detach" in
#      #disabled
#      0) vlc "$@" ;;
#       #enabled
#       1) setsid -f vlc "$@" > /dev/null 2>&1 ;;
#      esac
#}

#on_opt_parse_c () {
#    arg="$1"
#    case "$arg" in
#   #when scraping subscriptions enable -l
#   #-cSI or -cS
#   SI|S) is_loop=1 ;;
#    esac
#}
#}}}
#FZF_PLAYER="ffplay"
#YTFZF_ENABLE_FZF_DEFAULT_OPTS=1
thumbnail_viewer="ueberzug"
#max_thread_count=5
#thumbnail_viewer="ueberzug"
selected_sub="auto"
search_result_features="subtitles"
scrape="youtube"
thumbnail_quality="high"
yt_video_link_domain="https://youtube.com"
search_sort_by="upload_date" 
search_sort_by="relevance"
search_upload_date="" 
search_video_duration="" 
search_result_type="video" 
search_result_features="" 
search_region="US"
pages_to_scrape="3" 
multi_search="0"
pages_start="1"
nsfw="false" 
odysee_video_search_count="10"
multi_search="0"
custom_scrape_search_exclude="" 
scrape_search_exclude=" youtube-subscriptions peertube odysee S SI SL T video-recommended  youtube-trending H history "
max_thread_count="10"
fancy_subs="1" fancy_subs_left="-------------" 
fancy_subs_right="${fancy_subs_right=$fancy_subs_left}"
fzf_preview_side="left" 
#is_loop="1" search_again="0"
# Notifications
notify_playing="0"
# directories
cache_dir="${XDG_CACHE_HOME:-$HOME/.cache}/ytfzf" keep_cache="0"
# history
enable_hist="1" 
enable_search_hist="1"
###Config
config_dir=${YTFZF_CONFIG_DIR-$HOME/.config/ytfzf}
config_file=${YTFZF_CONFIG_FILE-$config_dir/conf.sh}
tmp_video_data_file="/tmp/ytfzf-subdata"
video_player="mpv"
#video_player="ffplay"
show_thumbnails="1"
show_link_only="1"

#The website to scrape by default. The currently supported options are:
#youtube,
#youtube-trending,
#youtube-subscriptions,
#peertube,
#odysee/lbry.
#youtube-playlist,
#youtube-channel,
#invidious-channel,
#video-recommended,
#playlist/json-file,
ytdl_pref="137+22+299+bestaudio/best/bestvideo"
# ytdl_pref="248+bestaudio/best/write-subs/sub-langs en ,--all-subs sub-format ass/srt/best"


#variable for switching on sort (date)
    is_detach="0" 
    is_audio_only="0"
    url_handler="multimedia_player"
    url_handler_opts=""
    info_to_print="" 
    info_wait="0" 
    info_wait_action="q"
    # video_pref="299" 
    # audio_pref="bestaudio"
    show_formats="0" 
    format_selection_screen="simple" 
    format_selection_sort="height"

    scripting_video_count="1"
    is_random_select="0" 
    is_auto_select="0" 
    is_specific_select="0"

    # option parsing
    long_opt_char="-"

## Shortcut


download_shortcut=ctrl-d
#The shortcut to download the selected videos.
#default: alt-d

video_shortcut=ctrl-v
#The shortcut to watch the selected videos.
#default: alt-v

audio_shortcut=ctrl-a
#The shortcut to listen to the selected videos.
#default: alt-m

detach_shortcut=ctrl-e
#The shortcut to use the detach player.
#default: alt-e

print_link_shortcut=ctrl-l
#The shortcut to use to print the link.
#default: alt-l

show_formats_shortcut=ctrl-f
#The shortcut to show formats before playing the video.
#default: alt-f

info_shortcut=ctrl-i
#The shortcut to get all info about the selected video.
#default: alt-i

search_again_shortcut=ctrl-s
#The shortcut to make another search.
#default: alt-s



    thumbnail_video_info_text () {
         printf "\n${c_cyan}%s" "$title"
         printf "\n${c_blue}Channel      ${c_green}%s" "$channel"
         printf "\n${c_blue}Duration     ${c_yellow}%s" "$duration"
         printf "\n${c_blue}Views        ${c_magenta}%s" "$views"
         printf "\n${c_blue}Date         ${c_cyan}%s" "$date"
}