.class public final Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls;
.super Ljava/lang/Object;
.source "MfFileItemDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/media/video/dialog/MfFileItemDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Controls"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000r\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0018\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020!H\u0002J\u0012\u0010.\u001a\u00020/*\u00020\u00142\u0006\u00100\u001a\u00020\u0005J \u00101\u001a\u00020/2\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u00102\u001a\u0002032\u0006\u00104\u001a\u000205H\u0002J\u0018\u00106\u001a\u00020/2\u0006\u00107\u001a\u0002082\u0006\u00109\u001a\u000203H\u0002J\u0006\u0010:\u001a\u00020/J\u0006\u0010;\u001a\u00020/R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0019\u001a\u00020\u001a\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001cR\u0011\u0010\u001d\u001a\u00020\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001fR\u001d\u0010%\u001a\u0004\u0018\u00010&8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008)\u0010*\u001a\u0004\u0008\'\u0010(R\u001d\u0010+\u001a\u0004\u0018\u00010&8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008-\u0010*\u001a\u0004\u0008,\u0010(\u00a8\u0006<"
    }
    d2 = {
        "Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls;",
        "",
        "dlg",
        "Landroid/view/View;",
        "forLocal",
        "",
        "<init>",
        "(Lcom/metamoji/media/video/dialog/MfFileItemDialog;Landroid/view/View;Z)V",
        "getDlg",
        "()Landroid/view/View;",
        "player",
        "Lcom/metamoji/video/AmvExoVideoPlayer;",
        "getPlayer",
        "()Lcom/metamoji/video/AmvExoVideoPlayer;",
        "durationTextView",
        "Landroid/widget/TextView;",
        "sizeTextView",
        "creationDateTextView",
        "registrationDateView",
        "playButton",
        "Landroid/widget/ImageButton;",
        "deleteRemoteButton",
        "Landroid/widget/Button;",
        "deleteLocalButton",
        "uploadButton",
        "slider",
        "Lcom/metamoji/video/AmvSlider;",
        "getSlider",
        "()Lcom/metamoji/video/AmvSlider;",
        "messageTextView",
        "getMessageTextView",
        "()Landroid/widget/TextView;",
        "formatString",
        "",
        "prefixResId",
        "",
        "value",
        "drPlay",
        "Landroid/graphics/drawable/Drawable;",
        "getDrPlay",
        "()Landroid/graphics/drawable/Drawable;",
        "drPlay$delegate",
        "Lkotlin/Lazy;",
        "drPause",
        "getDrPause",
        "drPause$delegate",
        "enable",
        "",
        "enabled",
        "onSliderChanged",
        "position",
        "",
        "dragState",
        "Lcom/metamoji/video/AmvSlider$SliderDragState;",
        "onVideoPrepared",
        "p",
        "Lcom/metamoji/video/IAmvVideoPlayer;",
        "duration",
        "updatePlayButton",
        "updateViewByState",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final creationDateTextView:Landroid/widget/TextView;

.field private final deleteLocalButton:Landroid/widget/Button;

.field private final deleteRemoteButton:Landroid/widget/Button;

.field private final dlg:Landroid/view/View;

.field private final drPause$delegate:Lkotlin/Lazy;

.field private final drPlay$delegate:Lkotlin/Lazy;

.field private final durationTextView:Landroid/widget/TextView;

.field private final messageTextView:Landroid/widget/TextView;

.field private final playButton:Landroid/widget/ImageButton;

.field private final player:Lcom/metamoji/video/AmvExoVideoPlayer;

.field private final registrationDateView:Landroid/widget/TextView;

.field private final sizeTextView:Landroid/widget/TextView;

.field private final slider:Lcom/metamoji/video/AmvSlider;

.field final synthetic this$0:Lcom/metamoji/media/video/dialog/MfFileItemDialog;

.field private final uploadButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Lcom/metamoji/media/video/dialog/MfFileItemDialog;Landroid/view/View;Z)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Z)V"
        }
    .end annotation

    const-string v0, "dlg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    iput-object p1, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls;->this$0:Lcom/metamoji/media/video/dialog/MfFileItemDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls;->dlg:Landroid/view/View;

    .line 216
    sget v0, Lcom/metamoji/noteanytime/R$id;->playerView:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/metamoji/video/AmvExoVideoPlayer;

    iput-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls;->player:Lcom/metamoji/video/AmvExoVideoPlayer;

    .line 218
    sget v2, Lcom/metamoji/noteanytime/R$id;->durationText:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls;->durationTextView:Landroid/widget/TextView;

    .line 219
    sget v3, Lcom/metamoji/noteanytime/R$id;->sizeText:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls;->sizeTextView:Landroid/widget/TextView;

    .line 220
    sget v4, Lcom/metamoji/noteanytime/R$id;->creationDateText:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls;->creationDateTextView:Landroid/widget/TextView;

    .line 221
    sget v5, Lcom/metamoji/noteanytime/R$id;->registrationDateText:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls;->registrationDateView:Landroid/widget/TextView;

    .line 223
    sget v6, Lcom/metamoji/noteanytime/R$id;->playButton:I

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls;->playButton:Landroid/widget/ImageButton;

    .line 224
    sget v7, Lcom/metamoji/noteanytime/R$id;->deleteRemoteButton:I

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls;->deleteRemoteButton:Landroid/widget/Button;

    .line 225
    sget v8, Lcom/metamoji/noteanytime/R$id;->deleteLocalButton:I

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls;->deleteLocalButton:Landroid/widget/Button;

    .line 226
    sget v9, Lcom/metamoji/noteanytime/R$id;->uploadButton:I

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Landroid/widget/Button;

    iput-object v9, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls;->uploadButton:Landroid/widget/Button;

    .line 228
    sget v10, Lcom/metamoji/noteanytime/R$id;->seekingSlider:I

    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, Lcom/metamoji/video/AmvSlider;

    iput-object v10, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls;->slider:Lcom/metamoji/video/AmvSlider;

    .line 229
    sget v11, Lcom/metamoji/noteanytime/R$id;->messageText:I

    invoke-virtual {p2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls;->messageTextView:Landroid/widget/TextView;

    .line 232
    sget p2, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_MEDIAFILES_CLIPLIST_ORDER_DURATION:I

    invoke-virtual {p1}, Lcom/metamoji/media/video/dialog/MfFileItemDialog;->getDuration()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls;->formatString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    sget p2, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_MEDIAFILES_CLIPLIST_ORDER_SIZE:I

    invoke-virtual {p1}, Lcom/metamoji/media/video/dialog/MfFileItemDialog;->getSize()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls;->formatString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    sget p2, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_MEDIAFILES_CLIPLIST_ORDER_CREATE:I

    invoke-virtual {p1}, Lcom/metamoji/media/video/dialog/MfFileItemDialog;->getCreationDate()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls;->formatString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    sget p2, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_MEDIAFILES_CLIPLIST_ORDER_REGIST:I

    invoke-virtual {p1}, Lcom/metamoji/media/video/dialog/MfFileItemDialog;->getRegistrationDate()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls;->formatString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {v5, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    new-instance p2, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls;)V

    invoke-virtual {v6, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    invoke-virtual {p1}, Lcom/metamoji/media/video/dialog/MfFileItemDialog;->getMaintenanceMode()Z

    move-result p2

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 243
    invoke-virtual {v7, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 244
    invoke-virtual {v8, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 245
    invoke-virtual {v9, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 246
    new-instance p2, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls$$ExternalSyntheticLambda1;

    invoke-direct {p2, p1}, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls$$ExternalSyntheticLambda1;-><init>(Lcom/metamoji/media/video/dialog/MfFileItemDialog;)V

    invoke-virtual {v8, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    new-instance p2, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls$$ExternalSyntheticLambda2;

    invoke-direct {p2, p1}, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls$$ExternalSyntheticLambda2;-><init>(Lcom/metamoji/media/video/dialog/MfFileItemDialog;)V

    invoke-virtual {v9, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 253
    :cond_0
    invoke-virtual {v7, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 254
    invoke-virtual {v8, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 255
    invoke-virtual {v9, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 256
    new-instance p2, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls$$ExternalSyntheticLambda3;

    invoke-direct {p2, p1}, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls$$ExternalSyntheticLambda3;-><init>(Lcom/metamoji/media/video/dialog/MfFileItemDialog;)V

    invoke-virtual {v7, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 262
    :cond_1
    invoke-virtual {v7, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 263
    invoke-virtual {v8, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 264
    invoke-virtual {v9, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 267
    :goto_0
    invoke-virtual {v10, v1}, Lcom/metamoji/video/AmvSlider;->setSaveFromParentEnabled(Z)V

    .line 269
    sget-object p2, Lcom/metamoji/video/FitMode;->Inside:Lcom/metamoji/video/FitMode;

    move-object p3, v0

    check-cast p3, Landroid/view/View;

    invoke-static {p3}, Lcom/metamoji/video/AmvUtilsKt;->getLayoutWidth(Landroid/view/View;)I

    move-result p3

    int-to-float p3, p3

    move-object v1, v0

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Lcom/metamoji/video/AmvUtilsKt;->getLayoutHeight(Landroid/view/View;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, p2, p3, v1}, Lcom/metamoji/video/AmvExoVideoPlayer;->setLayoutHint(Lcom/metamoji/video/FitMode;FF)V

    .line 270
    invoke-virtual {v0}, Lcom/metamoji/video/AmvExoVideoPlayer;->getPlayerStateChangedListener()Lcom/metamoji/video/IAmvVideoPlayer$PlayerStateChangedListener;

    move-result-object p2

    new-instance p3, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls$$ExternalSyntheticLambda4;

    invoke-direct {p3, p1}, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls$$ExternalSyntheticLambda4;-><init>(Lcom/metamoji/media/video/dialog/MfFileItemDialog;)V

    const/4 v1, 0x0

    invoke-virtual {p2, v1, p3}, Lcom/metamoji/video/IAmvVideoPlayer$PlayerStateChangedListener;->add(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)Lcom/metamoji/lib/utils/IFuncy2;

    .line 271
    invoke-virtual {v0}, Lcom/metamoji/video/AmvExoVideoPlayer;->getVideoPreparedListener()Lcom/metamoji/video/IAmvVideoPlayer$VideoPreparedListener;

    move-result-object p2

    new-instance p3, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls$6;

    invoke-direct {p3, p0}, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls$6;-><init>(Ljava/lang/Object;)V

    check-cast p3, Lkotlin/jvm/functions/Function2;

    invoke-virtual {p2, v1, p3}, Lcom/metamoji/video/IAmvVideoPlayer$VideoPreparedListener;->add(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)Lcom/metamoji/lib/utils/IFuncy2;

    .line 280
    new-instance p2, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls$$ExternalSyntheticLambda5;

    invoke-direct {p2, p1}, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls$$ExternalSyntheticLambda5;-><init>(Lcom/metamoji/media/video/dialog/MfFileItemDialog;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls;->drPlay$delegate:Lkotlin/Lazy;

    .line 285
    new-instance p2, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls$$ExternalSyntheticLambda6;

    invoke-direct {p2, p1}, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls$$ExternalSyntheticLambda6;-><init>(Lcom/metamoji/media/video/dialog/MfFileItemDialog;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls;->drPause$delegate:Lkotlin/Lazy;

    return-void
.end method

.method static final _init_$lambda$0(Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls;Landroid/view/View;)V
    .locals 0

    .line 238
    iget-object p0, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls;->player:Lcom/metamoji/video/AmvExoVideoPlayer;

    invoke-virtual {p0}, Lcom/metamoji/video/AmvExoVideoPlayer;->togglePlay()V

    return-void
.end method

.method static final _init_$lambda$1(Lcom/metamoji/media/video/dialog/MfFileItemDialog;Landroid/view/View;)V
    .locals 0

    .line 247
    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfFileItemDialog;->onDeleteItem()V

    return-void
.end method

.method static final _init_$lambda$2(Lcom/metamoji/media/video/dialog/MfFileItemDialog;Landroid/view/View;)V
    .locals 0

    .line 250
    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfFileItemDialog;->onUploadItem()V

    return-void
.end method

.method static final _init_$lambda$3(Lcom/metamoji/media/video/dialog/MfFileItemDialog;Landroid/view/View;)V
    .locals 0

    .line 257
    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfFileItemDialog;->onDeleteItem()V

    return-void
.end method

.method static final _init_$lambda$4(Lcom/metamoji/media/video/dialog/MfFileItemDialog;Lcom/metamoji/video/IAmvVideoPlayer;Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;)Lkotlin/Unit;
    .locals 1

    const-string v0, "<unused var>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "state"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 270
    invoke-static {p0}, Lcom/metamoji/media/video/dialog/MfFileItemDialog;->access$getModels$p(Lcom/metamoji/media/video/dialog/MfFileItemDialog;)Lcom/metamoji/media/video/dialog/MfFileItemDialog$Models;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Models;->setPlayerState(Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final synthetic access$onSliderChanged(Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls;Lcom/metamoji/video/AmvSlider;JLcom/metamoji/video/AmvSlider$SliderDragState;)V
    .locals 0

    .line 215
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls;->onSliderChanged(Lcom/metamoji/video/AmvSlider;JLcom/metamoji/video/AmvSlider$SliderDragState;)V

    return-void
.end method

.method public static final synthetic access$onVideoPrepared(Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls;Lcom/metamoji/video/IAmvVideoPlayer;J)V
    .locals 0

    .line 215
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls;->onVideoPrepared(Lcom/metamoji/video/IAmvVideoPlayer;J)V

    return-void
.end method

.method static final drPause_delegate$lambda$8(Lcom/metamoji/media/video/dialog/MfFileItemDialog;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 286
    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfFileItemDialog;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 287
    sget v0, Lcom/metamoji/video/R$drawable;->ic_pause:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static final drPlay_delegate$lambda$6(Lcom/metamoji/media/video/dialog/MfFileItemDialog;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 281
    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfFileItemDialog;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 282
    sget v0, Lcom/metamoji/video/R$drawable;->ic_play:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private final formatString(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls;->this$0:Lcom/metamoji/media/video/dialog/MfFileItemDialog;

    invoke-virtual {v0}, Lcom/metamoji/media/video/dialog/MfFileItemDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 276
    :cond_0
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    return-object p2
.end method

.method private final getDrPause()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls;->drPause$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private final getDrPlay()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls;->drPlay$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private final onSliderChanged(Lcom/metamoji/video/AmvSlider;JLcom/metamoji/video/AmvSlider$SliderDragState;)V
    .locals 0

    .line 308
    sget-object p1, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p4}, Lcom/metamoji/video/AmvSlider$SliderDragState;->ordinal()I

    move-result p4

    aget p1, p1, p4

    const/4 p4, 0x1

    if-eq p1, p4, :cond_3

    const/4 p4, 0x2

    if-eq p1, p4, :cond_2

    const/4 p4, 0x3

    if-eq p1, p4, :cond_0

    goto :goto_0

    .line 318
    :cond_0
    iget-object p1, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls;->player:Lcom/metamoji/video/AmvExoVideoPlayer;

    const/4 p4, 0x0

    invoke-virtual {p1, p4}, Lcom/metamoji/video/AmvExoVideoPlayer;->setFastSeekMode(Z)V

    .line 319
    iget-object p1, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls;->player:Lcom/metamoji/video/AmvExoVideoPlayer;

    invoke-virtual {p1, p2, p3}, Lcom/metamoji/video/AmvExoVideoPlayer;->seekTo(J)V

    .line 321
    iget-object p1, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls;->this$0:Lcom/metamoji/media/video/dialog/MfFileItemDialog;

    invoke-static {p1}, Lcom/metamoji/media/video/dialog/MfFileItemDialog;->access$getModels$p(Lcom/metamoji/media/video/dialog/MfFileItemDialog;)Lcom/metamoji/media/video/dialog/MfFileItemDialog$Models;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Models;->getPausingOnTracking()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 322
    iget-object p1, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls;->player:Lcom/metamoji/video/AmvExoVideoPlayer;

    invoke-virtual {p1}, Lcom/metamoji/video/AmvExoVideoPlayer;->play()V

    .line 323
    iget-object p1, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls;->this$0:Lcom/metamoji/media/video/dialog/MfFileItemDialog;

    invoke-static {p1}, Lcom/metamoji/media/video/dialog/MfFileItemDialog;->access$getModels$p(Lcom/metamoji/media/video/dialog/MfFileItemDialog;)Lcom/metamoji/media/video/dialog/MfFileItemDialog$Models;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Models;->setPausingOnTracking(Z)V

    :cond_1
    :goto_0
    return-void

    .line 315
    :cond_2
    iget-object p1, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls;->player:Lcom/metamoji/video/AmvExoVideoPlayer;

    invoke-virtual {p1, p2, p3}, Lcom/metamoji/video/AmvExoVideoPlayer;->seekTo(J)V

    return-void

    .line 310
    :cond_3
    iget-object p1, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls;->this$0:Lcom/metamoji/media/video/dialog/MfFileItemDialog;

    invoke-static {p1}, Lcom/metamoji/media/video/dialog/MfFileItemDialog;->access$getModels$p(Lcom/metamoji/media/video/dialog/MfFileItemDialog;)Lcom/metamoji/media/video/dialog/MfFileItemDialog$Models;

    move-result-object p1

    iget-object p2, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls;->this$0:Lcom/metamoji/media/video/dialog/MfFileItemDialog;

    invoke-static {p2}, Lcom/metamoji/media/video/dialog/MfFileItemDialog;->access$getModels$p(Lcom/metamoji/media/video/dialog/MfFileItemDialog;)Lcom/metamoji/media/video/dialog/MfFileItemDialog$Models;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Models;->isPlaying()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Models;->setPausingOnTracking(Z)V

    .line 311
    iget-object p1, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls;->player:Lcom/metamoji/video/AmvExoVideoPlayer;

    invoke-virtual {p1}, Lcom/metamoji/video/AmvExoVideoPlayer;->pause()V

    .line 312
    iget-object p1, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls;->player:Lcom/metamoji/video/AmvExoVideoPlayer;

    invoke-virtual {p1, p4}, Lcom/metamoji/video/AmvExoVideoPlayer;->setFastSeekMode(Z)V

    return-void
.end method

.method private final onVideoPrepared(Lcom/metamoji/video/IAmvVideoPlayer;J)V
    .locals 1

    .line 332
    iget-object p1, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls;->slider:Lcom/metamoji/video/AmvSlider;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, p3, v0}, Lcom/metamoji/video/AmvSlider;->resetWithValueRange(JZ)V

    .line 333
    iget-object p1, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls;->slider:Lcom/metamoji/video/AmvSlider;

    const-wide/16 p2, 0x0

    invoke-virtual {p1, p2, p3}, Lcom/metamoji/video/AmvSlider;->setCurrentPosition(J)V

    .line 334
    iget-object p1, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls;->slider:Lcom/metamoji/video/AmvSlider;

    invoke-virtual {p1}, Lcom/metamoji/video/AmvSlider;->getCurrentPositionChanged()Lcom/metamoji/video/AmvSlider$SliderValueChangedListener;

    move-result-object p1

    new-instance p2, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls$onVideoPrepared$1;

    invoke-direct {p2, p0}, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls$onVideoPrepared$1;-><init>(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/jvm/functions/Function3;

    invoke-virtual {p1, p2}, Lcom/metamoji/video/AmvSlider$SliderValueChangedListener;->set(Lkotlin/jvm/functions/Function3;)V

    .line 335
    iget-object p1, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls;->this$0:Lcom/metamoji/media/video/dialog/MfFileItemDialog;

    invoke-static {p1}, Lcom/metamoji/media/video/dialog/MfFileItemDialog;->access$getModels$p(Lcom/metamoji/media/video/dialog/MfFileItemDialog;)Lcom/metamoji/media/video/dialog/MfFileItemDialog$Models;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Models;->setPlayerPrepared(Z)V

    .line 336
    iget-object p1, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls;->playButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls;->enable(Landroid/widget/ImageButton;Z)V

    return-void
.end method


# virtual methods
.method public final enable(Landroid/widget/ImageButton;Z)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    .line 296
    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setAlpha(F)V

    const/4 p2, 0x1

    .line 297
    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setClickable(Z)V

    return-void

    :cond_0
    const p2, 0x3ecccccd    # 0.4f

    .line 299
    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setAlpha(F)V

    const/4 p2, 0x0

    .line 300
    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setClickable(Z)V

    return-void
.end method

.method public final getDlg()Landroid/view/View;
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls;->dlg:Landroid/view/View;

    return-object v0
.end method

.method public final getMessageTextView()Landroid/widget/TextView;
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls;->messageTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getPlayer()Lcom/metamoji/video/AmvExoVideoPlayer;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls;->player:Lcom/metamoji/video/AmvExoVideoPlayer;

    return-object v0
.end method

.method public final getSlider()Lcom/metamoji/video/AmvSlider;
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls;->slider:Lcom/metamoji/video/AmvSlider;

    return-object v0
.end method

.method public final updatePlayButton()V
    .locals 2

    .line 340
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls;->playButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls;->this$0:Lcom/metamoji/media/video/dialog/MfFileItemDialog;

    invoke-static {v1}, Lcom/metamoji/media/video/dialog/MfFileItemDialog;->access$getModels$p(Lcom/metamoji/media/video/dialog/MfFileItemDialog;)Lcom/metamoji/media/video/dialog/MfFileItemDialog$Models;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Models;->isPlayerPrepared()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls;->enable(Landroid/widget/ImageButton;Z)V

    .line 341
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls;->playButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls;->this$0:Lcom/metamoji/media/video/dialog/MfFileItemDialog;

    invoke-static {v1}, Lcom/metamoji/media/video/dialog/MfFileItemDialog;->access$getModels$p(Lcom/metamoji/media/video/dialog/MfFileItemDialog;)Lcom/metamoji/media/video/dialog/MfFileItemDialog$Models;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Models;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls;->getDrPause()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls;->getDrPlay()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final updateViewByState()V
    .locals 5

    .line 345
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls;->this$0:Lcom/metamoji/media/video/dialog/MfFileItemDialog;

    invoke-static {v0}, Lcom/metamoji/media/video/dialog/MfFileItemDialog;->access$getViewModel$p(Lcom/metamoji/media/video/dialog/MfFileItemDialog;)Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string/jumbo v0, "viewModel"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v2, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls;->this$0:Lcom/metamoji/media/video/dialog/MfFileItemDialog;

    .line 346
    invoke-virtual {v0}, Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel;->getErrorInfo()Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel$ErrorInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel$ErrorInfo;->getError()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    move-object v3, v1

    goto :goto_0

    .line 348
    :cond_2
    invoke-virtual {v0}, Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel;->getErrorInfo()Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel$ErrorInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel$ErrorInfo;->getMessageString()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 349
    invoke-virtual {v0}, Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel;->getErrorInfo()Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel$ErrorInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel$ErrorInfo;->getMessageString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 350
    :cond_3
    invoke-virtual {v0}, Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel;->getErrorInfo()Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel$ErrorInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel$ErrorInfo;->getMessageId()I

    move-result v3

    if-eqz v3, :cond_1

    .line 351
    invoke-virtual {v2}, Lcom/metamoji/media/video/dialog/MfFileItemDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel;->getErrorInfo()Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel$ErrorInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel$ErrorInfo;->getMessageId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 355
    :goto_0
    const-string v4, "controls"

    if-eqz v3, :cond_6

    .line 356
    invoke-static {v2}, Lcom/metamoji/media/video/dialog/MfFileItemDialog;->access$getControls$p(Lcom/metamoji/media/video/dialog/MfFileItemDialog;)Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_4
    iget-object v0, v0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls;->messageTextView:Landroid/widget/TextView;

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 357
    invoke-static {v2}, Lcom/metamoji/media/video/dialog/MfFileItemDialog;->access$getControls$p(Lcom/metamoji/media/video/dialog/MfFileItemDialog;)Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls;

    move-result-object v0

    if-nez v0, :cond_5

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move-object v1, v0

    :goto_1
    iget-object v0, v1, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls;->messageTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 358
    :cond_6
    invoke-virtual {v0}, Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel;->getOnFilePrepared()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 359
    invoke-static {v2}, Lcom/metamoji/media/video/dialog/MfFileItemDialog;->access$getControls$p(Lcom/metamoji/media/video/dialog/MfFileItemDialog;)Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls;

    move-result-object v0

    if-nez v0, :cond_7

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    move-object v1, v0

    :goto_2
    iget-object v0, v1, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls;->messageTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_8
    return-void
.end method
