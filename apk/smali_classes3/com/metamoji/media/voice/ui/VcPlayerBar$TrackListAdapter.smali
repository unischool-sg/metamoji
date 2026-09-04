.class public Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "VcPlayerBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/media/voice/ui/VcPlayerBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TrackListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter$TrackInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/media/voice/ui/VcPlayerBar;


# direct methods
.method public constructor <init>(Lcom/metamoji/media/voice/ui/VcPlayerBar;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 3124
    iput-object p1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;->this$0:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    const/4 p1, 0x0

    .line 3125
    invoke-direct {p0, p2, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    .line 3130
    invoke-virtual {p0, p1}, Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 3131
    const-string v1, "$id"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3132
    sget-object v2, Lcom/metamoji/media/voice/ui/VcPlayerBar$VcTrackType;->CHAPTER:Lcom/metamoji/media/voice/ui/VcPlayerBar$VcTrackType;

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/metamoji/media/voice/ui/VcPlayerBar$VcTrackType;->RECORD:Lcom/metamoji/media/voice/ui/VcPlayerBar$VcTrackType;

    :goto_0
    if-nez p2, :cond_1

    .line 3134
    invoke-virtual {p0, v2, p1, p3}, Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;->inflateView(Lcom/metamoji/media/voice/ui/VcPlayerBar$VcTrackType;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_1

    .line 3136
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter$TrackInfo;

    .line 3137
    iget-object v4, v3, Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter$TrackInfo;->m_type:Lcom/metamoji/media/voice/ui/VcPlayerBar$VcTrackType;

    if-eq v2, v4, :cond_2

    .line 3138
    invoke-virtual {p0, v2, p1, p3}, Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;->inflateView(Lcom/metamoji/media/voice/ui/VcPlayerBar$VcTrackType;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_1

    .line 3140
    :cond_2
    iput p1, v3, Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter$TrackInfo;->m_position:I

    .line 3143
    :goto_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter$TrackInfo;

    .line 3146
    sget v3, Lcom/metamoji/noteanytime/R$id;->vc_playlist_item_title:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/metamoji/ui/common/UiTextView;

    .line 3147
    const-string v4, "$title"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3148
    invoke-virtual {v3, v4}, Lcom/metamoji/ui/common/UiTextView;->setText(Ljava/lang/CharSequence;)V

    .line 3151
    sget v3, Lcom/metamoji/noteanytime/R$id;->vc_playlist_item_left_margin:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Space;

    .line 3152
    sget v4, Lcom/metamoji/noteanytime/R$id;->vc_playlist_item_check:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ToggleButton;

    .line 3153
    iget-object v5, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;->this$0:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    invoke-virtual {v5}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->isEditing()Z

    move-result v5

    const/4 v6, 0x1

    const/16 v7, 0x8

    const/4 v8, 0x0

    if-ne v5, v6, :cond_4

    .line 3154
    invoke-virtual {v3, v7}, Landroid/widget/Space;->setVisibility(I)V

    .line 3155
    invoke-virtual {v4, v8}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 3156
    iget-object v3, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;->this$0:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    invoke-static {v3}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->-$$Nest$fgetm_checkedPosition(Lcom/metamoji/media/voice/ui/VcPlayerBar;)I

    move-result v3

    if-ne p1, v3, :cond_3

    goto :goto_2

    :cond_3
    move v6, v8

    .line 3157
    :goto_2
    invoke-virtual {v4, v6}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 3158
    new-instance p1, Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter$1;

    invoke-direct {p1, p0, v4, p3}, Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter$1;-><init>(Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;Landroid/widget/ToggleButton;Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter$TrackInfo;)V

    invoke-virtual {v4, p1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    .line 3165
    :cond_4
    invoke-virtual {v3, v8}, Landroid/widget/Space;->setVisibility(I)V

    .line 3166
    invoke-virtual {v4, v7}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 3169
    :goto_3
    sget-object p1, Lcom/metamoji/media/voice/ui/VcPlayerBar$VcTrackType;->RECORD:Lcom/metamoji/media/voice/ui/VcPlayerBar$VcTrackType;

    if-ne v2, p1, :cond_8

    .line 3171
    sget p1, Lcom/metamoji/noteanytime/R$id;->vc_playlist_item_date_and_author:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/common/UiTextView;

    .line 3172
    const-string p3, "$nickname"

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 3173
    const-string v1, "$startDate"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    .line 3174
    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/metamoji/cm/TimeUtils;->unixtime2datetime(D)Ljava/util/Date;

    move-result-object v1

    .line 3175
    invoke-static {v1}, Lcom/metamoji/cm/TimeUtils;->getDateTimeText(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    if-eqz p3, :cond_5

    .line 3176
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    .line 3177
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/metamoji/ui/common/UiTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 3179
    :cond_5
    invoke-virtual {p1, v1}, Lcom/metamoji/ui/common/UiTextView;->setText(Ljava/lang/CharSequence;)V

    .line 3182
    :goto_4
    sget p1, Lcom/metamoji/noteanytime/R$id;->vc_playlist_item_duration:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 3183
    invoke-static {v0}, Lcom/metamoji/media/voice/VcUtil;->getDurationString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p3

    .line 3184
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3186
    sget p1, Lcom/metamoji/noteanytime/R$id;->vc_item_uploading_icon:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 3187
    const-string p3, "$ticket"

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    const/4 v0, 0x4

    if-eqz p3, :cond_7

    .line 3189
    invoke-static {}, Lcom/metamoji/media/MediaUploadManager2;->SharedInstance()Lcom/metamoji/media/MediaUploadManager2;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/metamoji/media/MediaUploadManager2;->isUploaded(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 3191
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-object p2

    .line 3193
    :cond_6
    invoke-virtual {p1, v8}, Landroid/view/View;->setVisibility(I)V

    return-object p2

    .line 3196
    :cond_7
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-object p2

    .line 3201
    :cond_8
    sget p1, Lcom/metamoji/noteanytime/R$id;->vc_playlist_item_chapter:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/common/UiImageButton;

    .line 3202
    const-string/jumbo v2, "voiceTag"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 3203
    sget v2, Lcom/metamoji/noteanytime/R$drawable;->vc_playlist_linked_label:I

    invoke-virtual {p1, v2}, Lcom/metamoji/ui/common/UiImageButton;->setImageResource(I)V

    goto :goto_5

    .line 3205
    :cond_9
    sget v2, Lcom/metamoji/noteanytime/R$drawable;->vc_playlist_label:I

    invoke-virtual {p1, v2}, Lcom/metamoji/ui/common/UiImageButton;->setImageResource(I)V

    .line 3209
    :goto_5
    sget p1, Lcom/metamoji/noteanytime/R$id;->vc_playlist_item_range:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 3210
    new-instance v2, Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter$2;

    invoke-direct {v2, p0, p3}, Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter$2;-><init>(Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter$TrackInfo;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3215
    const-string p3, "$startTime"

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Number;

    .line 3216
    const-string v2, "$endTime"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    .line 3217
    invoke-virtual {p3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    cmpl-double p3, v2, v4

    if-nez p3, :cond_a

    .line 3218
    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    return-object p2

    .line 3220
    :cond_a
    invoke-virtual {p1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 3221
    iget-object p3, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;->this$0:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    iget-object p3, p3, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_playingRangeIndexId:Ljava/lang/String;

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    invoke-virtual {p1, p3}, Landroid/view/View;->setSelected(Z)V

    return-object p2
.end method

.method inflateView(Lcom/metamoji/media/voice/ui/VcPlayerBar$VcTrackType;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 3237
    invoke-virtual {p0}, Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3238
    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 3241
    sget-object v1, Lcom/metamoji/media/voice/ui/VcPlayerBar$VcTrackType;->RECORD:Lcom/metamoji/media/voice/ui/VcPlayerBar$VcTrackType;

    const/4 v2, 0x0

    if-ne p1, v1, :cond_0

    .line 3242
    sget v1, Lcom/metamoji/noteanytime/R$layout;->vc_playlist_item_record:I

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    goto :goto_0

    .line 3244
    :cond_0
    sget v1, Lcom/metamoji/noteanytime/R$layout;->vc_playlist_item_chapter:I

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 3246
    :goto_0
    new-instance v0, Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter$TrackInfo;

    invoke-direct {v0, p0, p1, p2}, Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter$TrackInfo;-><init>(Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;Lcom/metamoji/media/voice/ui/VcPlayerBar$VcTrackType;I)V

    .line 3247
    invoke-virtual {p3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object p3
.end method
