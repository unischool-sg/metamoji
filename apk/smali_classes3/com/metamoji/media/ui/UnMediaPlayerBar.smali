.class public Lcom/metamoji/media/ui/UnMediaPlayerBar;
.super Landroid/widget/LinearLayout;
.source "UnMediaPlayerBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/media/ui/UnMediaPlayerBar$IUnMediaPlayerBarListener;
    }
.end annotation


# instance fields
.field _listener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/metamoji/media/ui/UnMediaPlayerBar$IUnMediaPlayerBarListener;",
            ">;"
        }
    .end annotation
.end field

.field _playButton:Landroid/widget/ImageView;

.field _rerecordButton:Landroid/widget/TextView;

.field _seekBar:Landroid/widget/SeekBar;

.field _timeLabel:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$mgetListener(Lcom/metamoji/media/ui/UnMediaPlayerBar;)Lcom/metamoji/media/ui/UnMediaPlayerBar$IUnMediaPlayerBarListener;
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/media/ui/UnMediaPlayerBar;->getListener()Lcom/metamoji/media/ui/UnMediaPlayerBar$IUnMediaPlayerBarListener;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 48
    iput-object p1, p0, Lcom/metamoji/media/ui/UnMediaPlayerBar;->_listener:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 48
    iput-object p1, p0, Lcom/metamoji/media/ui/UnMediaPlayerBar;->_listener:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private getListener()Lcom/metamoji/media/ui/UnMediaPlayerBar$IUnMediaPlayerBarListener;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/metamoji/media/ui/UnMediaPlayerBar;->_listener:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/media/ui/UnMediaPlayerBar$IUnMediaPlayerBarListener;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getBarSize()Lcom/metamoji/cm/SizeF;
    .locals 3

    .line 146
    new-instance v0, Lcom/metamoji/cm/SizeF;

    invoke-virtual {p0}, Lcom/metamoji/media/ui/UnMediaPlayerBar;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/metamoji/media/ui/UnMediaPlayerBar;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/cm/SizeF;-><init>(FF)V

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 6

    .line 82
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 84
    sget v0, Lcom/metamoji/noteanytime/R$id;->play_button:I

    invoke-virtual {p0, v0}, Lcom/metamoji/media/ui/UnMediaPlayerBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/metamoji/media/ui/UnMediaPlayerBar;->_playButton:Landroid/widget/ImageView;

    .line 85
    sget v0, Lcom/metamoji/noteanytime/R$id;->play_time_label:I

    invoke-virtual {p0, v0}, Lcom/metamoji/media/ui/UnMediaPlayerBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/metamoji/media/ui/UnMediaPlayerBar;->_timeLabel:Landroid/widget/TextView;

    const/16 v1, 0xff

    const/16 v2, 0x45

    const/16 v3, 0x4b

    const/16 v4, 0x54

    .line 86
    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 87
    sget v0, Lcom/metamoji/noteanytime/R$id;->seek_bar:I

    invoke-virtual {p0, v0}, Lcom/metamoji/media/ui/UnMediaPlayerBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/metamoji/media/ui/UnMediaPlayerBar;->_seekBar:Landroid/widget/SeekBar;

    .line 88
    sget v0, Lcom/metamoji/noteanytime/R$id;->rerecord_button:I

    invoke-virtual {p0, v0}, Lcom/metamoji/media/ui/UnMediaPlayerBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/metamoji/media/ui/UnMediaPlayerBar;->_rerecordButton:Landroid/widget/TextView;

    .line 89
    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v0, 0x42200000    # 40.0f

    .line 91
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v0

    float-to-int v0, v0

    .line 92
    sget v2, Lcom/metamoji/noteanytime/R$drawable;->vc_player_play:I

    const/16 v3, 0x3b

    const/16 v4, 0x30

    invoke-static {v1, v1, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    new-instance v3, Lcom/metamoji/cm/Size;

    invoke-direct {v3, v0, v0}, Lcom/metamoji/cm/Size;-><init>(II)V

    invoke-static {v2, v1, v3}, Lcom/metamoji/ui/HoverCm;->createHighlightImageWithImage(IILcom/metamoji/cm/Size;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 93
    iget-object v1, p0, Lcom/metamoji/media/ui/UnMediaPlayerBar;->_playButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 94
    iget-object v0, p0, Lcom/metamoji/media/ui/UnMediaPlayerBar;->_playButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/metamoji/media/ui/UnMediaPlayerBar$1;

    invoke-direct {v1, p0}, Lcom/metamoji/media/ui/UnMediaPlayerBar$1;-><init>(Lcom/metamoji/media/ui/UnMediaPlayerBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object v0, p0, Lcom/metamoji/media/ui/UnMediaPlayerBar;->_seekBar:Landroid/widget/SeekBar;

    new-instance v1, Lcom/metamoji/media/ui/UnMediaPlayerBar$2;

    invoke-direct {v1, p0}, Lcom/metamoji/media/ui/UnMediaPlayerBar$2;-><init>(Lcom/metamoji/media/ui/UnMediaPlayerBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 132
    iget-object v0, p0, Lcom/metamoji/media/ui/UnMediaPlayerBar;->_seekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 133
    iget-object v0, p0, Lcom/metamoji/media/ui/UnMediaPlayerBar;->_seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 135
    iget-object v0, p0, Lcom/metamoji/media/ui/UnMediaPlayerBar;->_rerecordButton:Landroid/widget/TextView;

    new-instance v1, Lcom/metamoji/media/ui/UnMediaPlayerBar$3;

    invoke-direct {v1, p0}, Lcom/metamoji/media/ui/UnMediaPlayerBar$3;-><init>(Lcom/metamoji/media/ui/UnMediaPlayerBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setCurrentTimeLabel()V
    .locals 0

    return-void
.end method

.method public setListener(Lcom/metamoji/media/ui/UnMediaPlayerBar$IUnMediaPlayerBarListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 57
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/metamoji/media/ui/UnMediaPlayerBar;->_listener:Ljava/lang/ref/WeakReference;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 59
    iput-object p1, p0, Lcom/metamoji/media/ui/UnMediaPlayerBar;->_listener:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setRerecordButtonVisible(Z)V
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/metamoji/media/ui/UnMediaPlayerBar;->_rerecordButton:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 231
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_0
    const/16 p1, 0x8

    .line 233
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public setSeekBarTime()V
    .locals 6

    .line 195
    invoke-direct {p0}, Lcom/metamoji/media/ui/UnMediaPlayerBar;->getListener()Lcom/metamoji/media/ui/UnMediaPlayerBar$IUnMediaPlayerBarListener;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 196
    invoke-direct {p0}, Lcom/metamoji/media/ui/UnMediaPlayerBar;->getListener()Lcom/metamoji/media/ui/UnMediaPlayerBar$IUnMediaPlayerBarListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/media/ui/UnMediaPlayerBar$IUnMediaPlayerBarListener;->getDuration()D

    move-result-wide v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double/2addr v2, v4

    .line 197
    iget-object v0, p0, Lcom/metamoji/media/ui/UnMediaPlayerBar;->_seekBar:Landroid/widget/SeekBar;

    double-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setMax(I)V

    goto :goto_0

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/metamoji/media/ui/UnMediaPlayerBar;->_seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 202
    :goto_0
    iget-object v0, p0, Lcom/metamoji/media/ui/UnMediaPlayerBar;->_seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 203
    iget-object v0, p0, Lcom/metamoji/media/ui/UnMediaPlayerBar;->_timeLabel:Landroid/widget/TextView;

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/metamoji/media/ui/UnMediaPlayerBar;->timeToString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public syncPlayButton(Z)V
    .locals 4

    if-eqz p1, :cond_0

    .line 216
    sget p1, Lcom/metamoji/noteanytime/R$drawable;->vc_player_pause:I

    .line 217
    iget-object v0, p0, Lcom/metamoji/media/ui/UnMediaPlayerBar;->_playButton:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0

    .line 219
    :cond_0
    sget p1, Lcom/metamoji/noteanytime/R$drawable;->vc_player_play:I

    .line 220
    iget-object v0, p0, Lcom/metamoji/media/ui/UnMediaPlayerBar;->_playButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    :goto_0
    const/high16 v0, 0x42200000    # 40.0f

    .line 222
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v0

    float-to-int v0, v0

    const/16 v1, 0x3b

    const/16 v2, 0x30

    const/16 v3, 0xff

    .line 223
    invoke-static {v3, v3, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    new-instance v2, Lcom/metamoji/cm/Size;

    invoke-direct {v2, v0, v0}, Lcom/metamoji/cm/Size;-><init>(II)V

    invoke-static {p1, v1, v2}, Lcom/metamoji/ui/HoverCm;->createHighlightImageWithImage(IILcom/metamoji/cm/Size;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 224
    iget-object v0, p0, Lcom/metamoji/media/ui/UnMediaPlayerBar;->_playButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 226
    invoke-virtual {p0}, Lcom/metamoji/media/ui/UnMediaPlayerBar;->updateButtonEnable()V

    return-void
.end method

.method public syncSeekBar(D)V
    .locals 3

    .line 183
    iget-object v0, p0, Lcom/metamoji/media/ui/UnMediaPlayerBar;->_timeLabel:Landroid/widget/TextView;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/media/ui/UnMediaPlayerBar;->timeToString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    iget-object v0, p0, Lcom/metamoji/media/ui/UnMediaPlayerBar;->_seekBar:Landroid/widget/SeekBar;

    const-wide v1, 0x408f400000000000L    # 1000.0

    mul-double/2addr p1, v1

    double-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method

.method timeToString(D)Ljava/lang/String;
    .locals 8

    const-wide v0, 0x40ac200000000000L    # 3600.0

    div-double v0, p1, v0

    double-to-int v0, v0

    mul-int/lit16 v1, v0, 0xe10

    int-to-double v1, v1

    sub-double v1, p1, v1

    const-wide/high16 v3, 0x404e000000000000L    # 60.0

    div-double v5, v1, v3

    double-to-int v5, v5

    int-to-double v6, v5

    mul-double/2addr v6, v3

    sub-double/2addr v1, v6

    .line 266
    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v1, v1

    const/16 v2, 0x3c

    if-ne v1, v2, :cond_0

    add-int/lit8 v5, v5, 0x1

    const/4 v1, 0x0

    if-ne v5, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    move v5, v1

    :cond_0
    if-nez v0, :cond_1

    double-to-int p1, p1

    .line 278
    div-int/lit8 p2, p1, 0x3c

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    rem-int/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%d:%02d"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 280
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p1, p2, v0}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%d:%02d:%02d"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method updateButtonEnable()V
    .locals 5

    .line 239
    invoke-direct {p0}, Lcom/metamoji/media/ui/UnMediaPlayerBar;->getListener()Lcom/metamoji/media/ui/UnMediaPlayerBar$IUnMediaPlayerBarListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 240
    invoke-direct {p0}, Lcom/metamoji/media/ui/UnMediaPlayerBar;->getListener()Lcom/metamoji/media/ui/UnMediaPlayerBar$IUnMediaPlayerBarListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/media/ui/UnMediaPlayerBar$IUnMediaPlayerBarListener;->getUnitId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 244
    :goto_0
    iget-object v1, p0, Lcom/metamoji/media/ui/UnMediaPlayerBar;->_playButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->isSelected()Z

    move-result v1

    const/16 v2, 0xff

    if-nez v1, :cond_1

    .line 245
    invoke-static {}, Lcom/metamoji/nt/NtUnitStateManager;->sharedInstance()Lcom/metamoji/nt/NtUnitStateManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/metamoji/nt/NtUnitStateManager;->isEdittingByOtherUsers(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 247
    iget-object v0, p0, Lcom/metamoji/media/ui/UnMediaPlayerBar;->_rerecordButton:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 248
    iget-object v0, p0, Lcom/metamoji/media/ui/UnMediaPlayerBar;->_rerecordButton:Landroid/widget/TextView;

    const/16 v1, 0x4b

    const/16 v3, 0x54

    const/16 v4, 0x45

    invoke-static {v2, v4, v1, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    .line 251
    :cond_1
    iget-object v0, p0, Lcom/metamoji/media/ui/UnMediaPlayerBar;->_rerecordButton:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 252
    iget-object v0, p0, Lcom/metamoji/media/ui/UnMediaPlayerBar;->_rerecordButton:Landroid/widget/TextView;

    const/16 v1, 0x80

    invoke-static {v2, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public updateFrame(Landroid/graphics/RectF;)V
    .locals 9

    .line 150
    invoke-virtual {p0}, Lcom/metamoji/media/ui/UnMediaPlayerBar;->getBarSize()Lcom/metamoji/cm/SizeF;

    move-result-object v0

    .line 151
    iget v1, p1, Landroid/graphics/RectF;->left:F

    .line 152
    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    .line 154
    invoke-virtual {p0}, Lcom/metamoji/media/ui/UnMediaPlayerBar;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 155
    new-instance v4, Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getX()F

    move-result v5

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getY()F

    move-result v6

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getX()F

    move-result v7

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getY()F

    move-result v8

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v8, v3

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v3, 0x0

    cmpg-float v5, v1, v3

    if-gez v5, :cond_0

    move v1, v3

    .line 161
    :cond_0
    iget v5, v4, Landroid/graphics/RectF;->right:F

    iget v6, v0, Lcom/metamoji/cm/SizeF;->width:F

    add-float/2addr v6, v1

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1

    .line 162
    iget v1, v4, Landroid/graphics/RectF;->right:F

    iget v5, v0, Lcom/metamoji/cm/SizeF;->width:F

    sub-float/2addr v1, v5

    .line 165
    :cond_1
    iget v5, v4, Landroid/graphics/RectF;->bottom:F

    iget v6, v0, Lcom/metamoji/cm/SizeF;->height:F

    add-float/2addr v6, v2

    cmpg-float v5, v5, v6

    if-gez v5, :cond_2

    .line 166
    iget p1, p1, Landroid/graphics/RectF;->top:F

    iget v2, v0, Lcom/metamoji/cm/SizeF;->height:F

    sub-float v2, p1, v2

    :cond_2
    cmpg-float p1, v2, v3

    if-ltz p1, :cond_3

    cmpg-float p1, v1, v3

    if-gez p1, :cond_4

    .line 171
    :cond_3
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result p1

    iget v1, v0, Lcom/metamoji/cm/SizeF;->width:F

    sub-float/2addr p1, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p1, v1

    .line 172
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget v0, v0, Lcom/metamoji/cm/SizeF;->height:F

    sub-float/2addr v2, v0

    div-float/2addr v2, v1

    move v1, p1

    .line 175
    :cond_4
    invoke-virtual {p0, v1}, Lcom/metamoji/media/ui/UnMediaPlayerBar;->setTranslationX(F)V

    .line 176
    invoke-virtual {p0, v2}, Lcom/metamoji/media/ui/UnMediaPlayerBar;->setTranslationY(F)V

    return-void
.end method
