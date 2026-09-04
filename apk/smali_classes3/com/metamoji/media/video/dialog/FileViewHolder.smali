.class public final Lcom/metamoji/media/video/dialog/FileViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "MfFileListView.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u001b\u0010\u0006\u001a\u00020\u00038FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u0007\u0010\u0008R\u001b\u0010\u000b\u001a\u00020\u000c8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\n\u001a\u0004\u0008\r\u0010\u000eR\u001b\u0010\u0010\u001a\u00020\u00118FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\n\u001a\u0004\u0008\u0012\u0010\u0013R\u001b\u0010\u0015\u001a\u00020\u00118FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\n\u001a\u0004\u0008\u0016\u0010\u0013R\u001b\u0010\u0018\u001a\u00020\u00198FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001c\u0010\n\u001a\u0004\u0008\u001a\u0010\u001bR\u001b\u0010\u001d\u001a\u00020\u00038FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001f\u0010\n\u001a\u0004\u0008\u001e\u0010\u0008R\u001b\u0010 \u001a\u00020!8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008$\u0010\n\u001a\u0004\u0008\"\u0010#R\u001c\u0010%\u001a\u0004\u0018\u00010&X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\'\u0010(\"\u0004\u0008)\u0010*\u00a8\u0006+"
    }
    d2 = {
        "Lcom/metamoji/media/video/dialog/FileViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "view",
        "Landroid/view/View;",
        "<init>",
        "(Landroid/view/View;)V",
        "mainView",
        "getMainView",
        "()Landroid/view/View;",
        "mainView$delegate",
        "Lkotlin/Lazy;",
        "progressRing",
        "Landroid/widget/ProgressBar;",
        "getProgressRing",
        "()Landroid/widget/ProgressBar;",
        "progressRing$delegate",
        "dateTextView",
        "Landroid/widget/TextView;",
        "getDateTextView",
        "()Landroid/widget/TextView;",
        "dateTextView$delegate",
        "durationTextView",
        "getDurationTextView",
        "durationTextView$delegate",
        "imageView",
        "Landroid/widget/ImageView;",
        "getImageView",
        "()Landroid/widget/ImageView;",
        "imageView$delegate",
        "checkMarkView",
        "getCheckMarkView",
        "checkMarkView$delegate",
        "uploadProgressBar",
        "Lcom/metamoji/media/video/dialog/CircularProgressBar;",
        "getUploadProgressBar",
        "()Lcom/metamoji/media/video/dialog/CircularProgressBar;",
        "uploadProgressBar$delegate",
        "item",
        "Lcom/metamoji/media/video/dialog/IFileItem;",
        "getItem",
        "()Lcom/metamoji/media/video/dialog/IFileItem;",
        "setItem",
        "(Lcom/metamoji/media/video/dialog/IFileItem;)V",
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
.field private final checkMarkView$delegate:Lkotlin/Lazy;

.field private final dateTextView$delegate:Lkotlin/Lazy;

.field private final durationTextView$delegate:Lkotlin/Lazy;

.field private final imageView$delegate:Lkotlin/Lazy;

.field private item:Lcom/metamoji/media/video/dialog/IFileItem;

.field private final mainView$delegate:Lkotlin/Lazy;

.field private final progressRing$delegate:Lkotlin/Lazy;

.field private final uploadProgressBar$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 905
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 906
    new-instance p1, Lcom/metamoji/media/video/dialog/FileViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/metamoji/media/video/dialog/FileViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/media/video/dialog/FileViewHolder;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/media/video/dialog/FileViewHolder;->mainView$delegate:Lkotlin/Lazy;

    .line 909
    new-instance p1, Lcom/metamoji/media/video/dialog/FileViewHolder$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/metamoji/media/video/dialog/FileViewHolder$$ExternalSyntheticLambda1;-><init>(Lcom/metamoji/media/video/dialog/FileViewHolder;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/media/video/dialog/FileViewHolder;->progressRing$delegate:Lkotlin/Lazy;

    .line 912
    new-instance p1, Lcom/metamoji/media/video/dialog/FileViewHolder$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/metamoji/media/video/dialog/FileViewHolder$$ExternalSyntheticLambda2;-><init>(Lcom/metamoji/media/video/dialog/FileViewHolder;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/media/video/dialog/FileViewHolder;->dateTextView$delegate:Lkotlin/Lazy;

    .line 915
    new-instance p1, Lcom/metamoji/media/video/dialog/FileViewHolder$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lcom/metamoji/media/video/dialog/FileViewHolder$$ExternalSyntheticLambda3;-><init>(Lcom/metamoji/media/video/dialog/FileViewHolder;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/media/video/dialog/FileViewHolder;->durationTextView$delegate:Lkotlin/Lazy;

    .line 918
    new-instance p1, Lcom/metamoji/media/video/dialog/FileViewHolder$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lcom/metamoji/media/video/dialog/FileViewHolder$$ExternalSyntheticLambda4;-><init>(Lcom/metamoji/media/video/dialog/FileViewHolder;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/media/video/dialog/FileViewHolder;->imageView$delegate:Lkotlin/Lazy;

    .line 921
    new-instance p1, Lcom/metamoji/media/video/dialog/FileViewHolder$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0}, Lcom/metamoji/media/video/dialog/FileViewHolder$$ExternalSyntheticLambda5;-><init>(Lcom/metamoji/media/video/dialog/FileViewHolder;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/media/video/dialog/FileViewHolder;->checkMarkView$delegate:Lkotlin/Lazy;

    .line 924
    new-instance p1, Lcom/metamoji/media/video/dialog/FileViewHolder$$ExternalSyntheticLambda6;

    invoke-direct {p1, p0}, Lcom/metamoji/media/video/dialog/FileViewHolder$$ExternalSyntheticLambda6;-><init>(Lcom/metamoji/media/video/dialog/FileViewHolder;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/media/video/dialog/FileViewHolder;->uploadProgressBar$delegate:Lkotlin/Lazy;

    return-void
.end method

.method static final checkMarkView_delegate$lambda$5(Lcom/metamoji/media/video/dialog/FileViewHolder;)Landroid/view/View;
    .locals 1

    .line 922
    iget-object p0, p0, Lcom/metamoji/media/video/dialog/FileViewHolder;->itemView:Landroid/view/View;

    sget v0, Lcom/metamoji/noteanytime/R$id;->checkMarkView:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static final dateTextView_delegate$lambda$2(Lcom/metamoji/media/video/dialog/FileViewHolder;)Landroid/widget/TextView;
    .locals 1

    .line 913
    iget-object p0, p0, Lcom/metamoji/media/video/dialog/FileViewHolder;->itemView:Landroid/view/View;

    sget v0, Lcom/metamoji/noteanytime/R$id;->dateText:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    return-object p0
.end method

.method static final durationTextView_delegate$lambda$3(Lcom/metamoji/media/video/dialog/FileViewHolder;)Landroid/widget/TextView;
    .locals 1

    .line 916
    iget-object p0, p0, Lcom/metamoji/media/video/dialog/FileViewHolder;->itemView:Landroid/view/View;

    sget v0, Lcom/metamoji/noteanytime/R$id;->durationText:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    return-object p0
.end method

.method static final imageView_delegate$lambda$4(Lcom/metamoji/media/video/dialog/FileViewHolder;)Landroid/widget/ImageView;
    .locals 1

    .line 919
    iget-object p0, p0, Lcom/metamoji/media/video/dialog/FileViewHolder;->itemView:Landroid/view/View;

    sget v0, Lcom/metamoji/noteanytime/R$id;->thumbnail:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    return-object p0
.end method

.method static final mainView_delegate$lambda$0(Lcom/metamoji/media/video/dialog/FileViewHolder;)Landroid/view/View;
    .locals 1

    .line 907
    iget-object p0, p0, Lcom/metamoji/media/video/dialog/FileViewHolder;->itemView:Landroid/view/View;

    sget v0, Lcom/metamoji/noteanytime/R$id;->itemMainView:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static final progressRing_delegate$lambda$1(Lcom/metamoji/media/video/dialog/FileViewHolder;)Landroid/widget/ProgressBar;
    .locals 1

    .line 910
    iget-object p0, p0, Lcom/metamoji/media/video/dialog/FileViewHolder;->itemView:Landroid/view/View;

    sget v0, Lcom/metamoji/noteanytime/R$id;->progressRing:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static final uploadProgressBar_delegate$lambda$6(Lcom/metamoji/media/video/dialog/FileViewHolder;)Lcom/metamoji/media/video/dialog/CircularProgressBar;
    .locals 1

    .line 925
    iget-object p0, p0, Lcom/metamoji/media/video/dialog/FileViewHolder;->itemView:Landroid/view/View;

    sget v0, Lcom/metamoji/noteanytime/R$id;->uploadProgressBar:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/metamoji/media/video/dialog/CircularProgressBar;

    return-object p0
.end method


# virtual methods
.method public final getCheckMarkView()Landroid/view/View;
    .locals 2

    .line 921
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/FileViewHolder;->checkMarkView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final getDateTextView()Landroid/widget/TextView;
    .locals 2

    .line 912
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/FileViewHolder;->dateTextView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final getDurationTextView()Landroid/widget/TextView;
    .locals 2

    .line 915
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/FileViewHolder;->durationTextView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final getImageView()Landroid/widget/ImageView;
    .locals 2

    .line 918
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/FileViewHolder;->imageView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method public final getItem()Lcom/metamoji/media/video/dialog/IFileItem;
    .locals 1

    .line 927
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/FileViewHolder;->item:Lcom/metamoji/media/video/dialog/IFileItem;

    return-object v0
.end method

.method public final getMainView()Landroid/view/View;
    .locals 2

    .line 906
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/FileViewHolder;->mainView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final getProgressRing()Landroid/widget/ProgressBar;
    .locals 2

    .line 909
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/FileViewHolder;->progressRing$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ProgressBar;

    return-object v0
.end method

.method public final getUploadProgressBar()Lcom/metamoji/media/video/dialog/CircularProgressBar;
    .locals 2

    .line 924
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/FileViewHolder;->uploadProgressBar$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/metamoji/media/video/dialog/CircularProgressBar;

    return-object v0
.end method

.method public final setItem(Lcom/metamoji/media/video/dialog/IFileItem;)V
    .locals 0

    .line 927
    iput-object p1, p0, Lcom/metamoji/media/video/dialog/FileViewHolder;->item:Lcom/metamoji/media/video/dialog/IFileItem;

    return-void
.end method
