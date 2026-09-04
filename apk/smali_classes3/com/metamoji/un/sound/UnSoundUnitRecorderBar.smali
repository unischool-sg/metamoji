.class public Lcom/metamoji/un/sound/UnSoundUnitRecorderBar;
.super Landroid/widget/LinearLayout;
.source "UnSoundUnitRecorderBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/un/sound/UnSoundUnitRecorderBar$IUnSoundUnitRecorderBarListener;
    }
.end annotation


# instance fields
.field _listener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/metamoji/un/sound/UnSoundUnitRecorderBar$IUnSoundUnitRecorderBarListener;",
            ">;"
        }
    .end annotation
.end field

.field _recordButton:Landroid/widget/ImageView;

.field _recordingLabel:Landroid/widget/TextView;

.field _timeLabel:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$mgetListener(Lcom/metamoji/un/sound/UnSoundUnitRecorderBar;)Lcom/metamoji/un/sound/UnSoundUnitRecorderBar$IUnSoundUnitRecorderBarListener;
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/un/sound/UnSoundUnitRecorderBar;->getListener()Lcom/metamoji/un/sound/UnSoundUnitRecorderBar$IUnSoundUnitRecorderBarListener;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 38
    iput-object p1, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorderBar;->_listener:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 38
    iput-object p1, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorderBar;->_listener:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private getListener()Lcom/metamoji/un/sound/UnSoundUnitRecorderBar$IUnSoundUnitRecorderBarListener;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorderBar;->_listener:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/sound/UnSoundUnitRecorderBar$IUnSoundUnitRecorderBarListener;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getBarSize()Lcom/metamoji/cm/SizeF;
    .locals 3

    .line 102
    new-instance v0, Lcom/metamoji/cm/SizeF;

    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnitRecorderBar;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnitRecorderBar;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/cm/SizeF;-><init>(FF)V

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 5

    .line 72
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 74
    sget v0, Lcom/metamoji/noteanytime/R$id;->record_button:I

    invoke-virtual {p0, v0}, Lcom/metamoji/un/sound/UnSoundUnitRecorderBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorderBar;->_recordButton:Landroid/widget/ImageView;

    .line 75
    sget v0, Lcom/metamoji/noteanytime/R$id;->record_time_label:I

    invoke-virtual {p0, v0}, Lcom/metamoji/un/sound/UnSoundUnitRecorderBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorderBar;->_timeLabel:Landroid/widget/TextView;

    const/16 v1, 0x4b

    const/16 v2, 0x54

    const/16 v3, 0xff

    const/16 v4, 0x45

    .line 76
    invoke-static {v3, v4, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 77
    sget v0, Lcom/metamoji/noteanytime/R$id;->recording_label:I

    invoke-virtual {p0, v0}, Lcom/metamoji/un/sound/UnSoundUnitRecorderBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorderBar;->_recordingLabel:Landroid/widget/TextView;

    const/16 v1, 0x3b

    const/16 v2, 0x30

    .line 78
    invoke-static {v3, v3, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 79
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorderBar;->_recordingLabel:Landroid/widget/TextView;

    sget v4, Lcom/metamoji/noteanytime/R$string;->SCHOOL_SOUND_UNIT_RECORDING:I

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    const/high16 v0, 0x42200000    # 40.0f

    .line 81
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v0

    float-to-int v0, v0

    .line 82
    sget v4, Lcom/metamoji/noteanytime/R$drawable;->rec:I

    invoke-static {v3, v3, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    new-instance v2, Lcom/metamoji/cm/Size;

    invoke-direct {v2, v0, v0}, Lcom/metamoji/cm/Size;-><init>(II)V

    invoke-static {v4, v1, v2}, Lcom/metamoji/ui/HoverCm;->createHighlightImageWithImage(IILcom/metamoji/cm/Size;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 83
    iget-object v1, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorderBar;->_recordButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 84
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorderBar;->_recordButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/metamoji/un/sound/UnSoundUnitRecorderBar$1;

    invoke-direct {v1, p0}, Lcom/metamoji/un/sound/UnSoundUnitRecorderBar$1;-><init>(Lcom/metamoji/un/sound/UnSoundUnitRecorderBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnitRecorderBar;->updateRecordingButton()V

    return-void
.end method

.method public setListener(Lcom/metamoji/un/sound/UnSoundUnitRecorderBar$IUnSoundUnitRecorderBarListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 47
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorderBar;->_listener:Ljava/lang/ref/WeakReference;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 49
    iput-object p1, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorderBar;->_listener:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public syncRecordingButton(Z)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 174
    sget p1, Lcom/metamoji/noteanytime/R$drawable;->rec_stop:I

    .line 175
    iget-object v1, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorderBar;->_recordingLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 176
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorderBar;->_recordButton:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0

    .line 178
    :cond_0
    sget p1, Lcom/metamoji/noteanytime/R$drawable;->rec:I

    .line 179
    iget-object v1, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorderBar;->_recordingLabel:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 180
    iget-object v1, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorderBar;->_recordButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    :goto_0
    const/high16 v0, 0x42200000    # 40.0f

    .line 182
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v0

    float-to-int v0, v0

    const/16 v1, 0x3b

    const/16 v2, 0x30

    const/16 v3, 0xff

    .line 183
    invoke-static {v3, v3, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    new-instance v2, Lcom/metamoji/cm/Size;

    invoke-direct {v2, v0, v0}, Lcom/metamoji/cm/Size;-><init>(II)V

    invoke-static {p1, v1, v2}, Lcom/metamoji/ui/HoverCm;->createHighlightImageWithImage(IILcom/metamoji/cm/Size;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 184
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorderBar;->_recordButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public syncTimeLabel(D)V
    .locals 1

    .line 136
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/un/sound/UnSoundUnitRecorderBar;->timeToString(D)Ljava/lang/String;

    move-result-object p1

    .line 137
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p2

    new-instance v0, Lcom/metamoji/un/sound/UnSoundUnitRecorderBar$2;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/un/sound/UnSoundUnitRecorderBar$2;-><init>(Lcom/metamoji/un/sound/UnSoundUnitRecorderBar;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method timeToString(D)Ljava/lang/String;
    .locals 0

    double-to-int p1, p1

    .line 155
    div-int/lit8 p2, p1, 0x3c

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    rem-int/lit8 p1, p1, 0x3c

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%d:%02d"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public updateFrame(Landroid/graphics/RectF;)V
    .locals 9

    .line 106
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnitRecorderBar;->getBarSize()Lcom/metamoji/cm/SizeF;

    move-result-object v0

    .line 107
    iget v1, p1, Landroid/graphics/RectF;->left:F

    .line 108
    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    .line 110
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnitRecorderBar;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 111
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

    .line 117
    :cond_0
    iget v5, v4, Landroid/graphics/RectF;->right:F

    iget v6, v0, Lcom/metamoji/cm/SizeF;->width:F

    add-float/2addr v6, v1

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1

    .line 118
    iget v1, v4, Landroid/graphics/RectF;->right:F

    iget v5, v0, Lcom/metamoji/cm/SizeF;->width:F

    sub-float/2addr v1, v5

    .line 121
    :cond_1
    iget v5, v4, Landroid/graphics/RectF;->bottom:F

    iget v6, v0, Lcom/metamoji/cm/SizeF;->height:F

    add-float/2addr v6, v2

    cmpg-float v5, v5, v6

    if-gez v5, :cond_2

    .line 122
    iget p1, p1, Landroid/graphics/RectF;->top:F

    iget v2, v0, Lcom/metamoji/cm/SizeF;->height:F

    sub-float v2, p1, v2

    :cond_2
    cmpg-float p1, v2, v3

    if-ltz p1, :cond_3

    cmpg-float p1, v1, v3

    if-gez p1, :cond_4

    .line 127
    :cond_3
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result p1

    iget v1, v0, Lcom/metamoji/cm/SizeF;->width:F

    sub-float/2addr p1, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p1, v1

    .line 128
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget v0, v0, Lcom/metamoji/cm/SizeF;->height:F

    sub-float/2addr v2, v0

    div-float/2addr v2, v1

    move v1, p1

    .line 131
    :cond_4
    invoke-virtual {p0, v1}, Lcom/metamoji/un/sound/UnSoundUnitRecorderBar;->setTranslationX(F)V

    .line 132
    invoke-virtual {p0, v2}, Lcom/metamoji/un/sound/UnSoundUnitRecorderBar;->setTranslationY(F)V

    return-void
.end method

.method updateRecordingButton()V
    .locals 5

    .line 160
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorderBar;->_recordButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    sget v0, Lcom/metamoji/noteanytime/R$drawable;->rec_stop:I

    .line 162
    iget-object v1, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorderBar;->_recordingLabel:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 164
    :cond_0
    sget v0, Lcom/metamoji/noteanytime/R$drawable;->rec:I

    .line 165
    iget-object v1, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorderBar;->_recordingLabel:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    const/high16 v1, 0x42200000    # 40.0f

    .line 167
    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v1

    float-to-int v1, v1

    const/16 v2, 0x3b

    const/16 v3, 0x30

    const/16 v4, 0xff

    .line 168
    invoke-static {v4, v4, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    new-instance v3, Lcom/metamoji/cm/Size;

    invoke-direct {v3, v1, v1}, Lcom/metamoji/cm/Size;-><init>(II)V

    invoke-static {v0, v2, v3}, Lcom/metamoji/ui/HoverCm;->createHighlightImageWithImage(IILcom/metamoji/cm/Size;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 169
    iget-object v1, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorderBar;->_recordButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
