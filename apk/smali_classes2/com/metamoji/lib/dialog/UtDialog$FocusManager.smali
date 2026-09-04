.class public final Lcom/metamoji/lib/dialog/UtDialog$FocusManager;
.super Ljava/lang/Object;
.source "UtDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/lib/dialog/UtDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FocusManager"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0016\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0013J\u0006\u0010\u0016\u001a\u00020\u0011J\u0014\u0010\u0017\u001a\u00020\u00112\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0019R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u000b\u001a\u00020\t8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u000e\u001a\u00020\t8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\rR\u000e\u0010\u0015\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/metamoji/lib/dialog/UtDialog$FocusManager;",
        "",
        "withDialogButtons",
        "",
        "useKey",
        "Lcom/metamoji/lib/dialog/UtFocusManager$UseKey;",
        "<init>",
        "(ZLcom/metamoji/lib/dialog/UtFocusManager$UseKey;)V",
        "rootFocusManager",
        "Lcom/metamoji/lib/dialog/UtFocusManager;",
        "bodyFocusManager",
        "root",
        "getRoot",
        "()Lcom/metamoji/lib/dialog/UtFocusManager;",
        "body",
        "getBody",
        "attach",
        "",
        "rootView",
        "Landroid/view/View;",
        "bodyView",
        "initialFocus",
        "reserveInitialFocus",
        "applyInitialFocus",
        "fallbackView",
        "Lkotlin/Function0;",
        "dialog"
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
.field private final bodyFocusManager:Lcom/metamoji/lib/dialog/UtFocusManager;

.field private initialFocus:Z

.field private final rootFocusManager:Lcom/metamoji/lib/dialog/UtFocusManager;


# direct methods
.method public constructor <init>(ZLcom/metamoji/lib/dialog/UtFocusManager$UseKey;)V
    .locals 2

    .line 408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 409
    new-instance v0, Lcom/metamoji/lib/dialog/UtFocusManager;

    invoke-direct {v0}, Lcom/metamoji/lib/dialog/UtFocusManager;-><init>()V

    if-eqz p2, :cond_0

    .line 410
    invoke-virtual {v0, p2}, Lcom/metamoji/lib/dialog/UtFocusManager;->setUseKeys(Lcom/metamoji/lib/dialog/UtFocusManager$UseKey;)Lcom/metamoji/lib/dialog/UtFocusManager;

    .line 409
    :cond_0
    iput-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog$FocusManager;->rootFocusManager:Lcom/metamoji/lib/dialog/UtFocusManager;

    if-eqz p1, :cond_1

    .line 413
    sget p1, Lcom/metamoji/lib/dialog/R$id;->left_button:I

    sget v1, Lcom/metamoji/lib/dialog/R$id;->right_button:I

    filled-new-array {p1, v1}, [I

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/metamoji/lib/dialog/UtFocusManager;->register([I)Lcom/metamoji/lib/dialog/UtFocusManager;

    .line 414
    new-instance p1, Lcom/metamoji/lib/dialog/UtFocusManager;

    invoke-direct {p1}, Lcom/metamoji/lib/dialog/UtFocusManager;-><init>()V

    .line 415
    invoke-virtual {v0, p1}, Lcom/metamoji/lib/dialog/UtFocusManager;->appendChild(Lcom/metamoji/lib/dialog/UtFocusManager;)Lcom/metamoji/lib/dialog/UtFocusManager;

    if-eqz p2, :cond_2

    .line 416
    invoke-virtual {p1, p2}, Lcom/metamoji/lib/dialog/UtFocusManager;->setUseKeys(Lcom/metamoji/lib/dialog/UtFocusManager$UseKey;)Lcom/metamoji/lib/dialog/UtFocusManager;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 412
    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/metamoji/lib/dialog/UtDialog$FocusManager;->bodyFocusManager:Lcom/metamoji/lib/dialog/UtFocusManager;

    return-void
.end method

.method public synthetic constructor <init>(ZLcom/metamoji/lib/dialog/UtFocusManager$UseKey;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 408
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/metamoji/lib/dialog/UtDialog$FocusManager;-><init>(ZLcom/metamoji/lib/dialog/UtFocusManager$UseKey;)V

    return-void
.end method


# virtual methods
.method public final applyInitialFocus(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    const-string v0, "fallbackView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 442
    iget-boolean v0, p0, Lcom/metamoji/lib/dialog/UtDialog$FocusManager;->initialFocus:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 443
    iput-boolean v0, p0, Lcom/metamoji/lib/dialog/UtDialog$FocusManager;->initialFocus:Z

    .line 444
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog$FocusManager;->getRoot()Lcom/metamoji/lib/dialog/UtFocusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/UtFocusManager;->applyInitialFocus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 445
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog$FocusManager;->getRoot()Lcom/metamoji/lib/dialog/UtFocusManager;

    move-result-object v0

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/metamoji/lib/dialog/UtFocusManager;->setInitialFocus(I)Lcom/metamoji/lib/dialog/UtFocusManager;

    .line 446
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog$FocusManager;->getRoot()Lcom/metamoji/lib/dialog/UtFocusManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/lib/dialog/UtFocusManager;->applyInitialFocus()Z

    :cond_0
    return-void
.end method

.method public final attach(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    const-string v0, "rootView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bodyView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 426
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog$FocusManager;->bodyFocusManager:Lcom/metamoji/lib/dialog/UtFocusManager;

    if-nez v0, :cond_0

    .line 428
    iget-object p1, p0, Lcom/metamoji/lib/dialog/UtDialog$FocusManager;->rootFocusManager:Lcom/metamoji/lib/dialog/UtFocusManager;

    invoke-virtual {p1, p2}, Lcom/metamoji/lib/dialog/UtFocusManager;->attach(Landroid/view/View;)V

    return-void

    .line 431
    :cond_0
    invoke-virtual {v0, p2}, Lcom/metamoji/lib/dialog/UtFocusManager;->attach(Landroid/view/View;)V

    .line 432
    iget-object p2, p0, Lcom/metamoji/lib/dialog/UtDialog$FocusManager;->rootFocusManager:Lcom/metamoji/lib/dialog/UtFocusManager;

    invoke-virtual {p2, p1}, Lcom/metamoji/lib/dialog/UtFocusManager;->attach(Landroid/view/View;)V

    return-void
.end method

.method public final getBody()Lcom/metamoji/lib/dialog/UtFocusManager;
    .locals 1

    .line 423
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog$FocusManager;->bodyFocusManager:Lcom/metamoji/lib/dialog/UtFocusManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog$FocusManager;->rootFocusManager:Lcom/metamoji/lib/dialog/UtFocusManager;

    :cond_0
    return-object v0
.end method

.method public final getRoot()Lcom/metamoji/lib/dialog/UtFocusManager;
    .locals 1

    .line 422
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog$FocusManager;->rootFocusManager:Lcom/metamoji/lib/dialog/UtFocusManager;

    return-object v0
.end method

.method public final reserveInitialFocus()V
    .locals 1

    const/4 v0, 0x1

    .line 438
    iput-boolean v0, p0, Lcom/metamoji/lib/dialog/UtDialog$FocusManager;->initialFocus:Z

    return-void
.end method
