.class public abstract Lcom/metamoji/lib/utils/CommandBase;
.super Ljava/lang/Object;
.source "ICommand.kt"

# interfaces
.implements Lcom/metamoji/lib/utils/ICommand;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/lib/utils/CommandBase$ClickListenerDisposer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/metamoji/lib/utils/ICommand<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008&\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002:\u0001\u0014B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u001d\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00028\u0000H\u0014\u00a2\u0006\u0002\u0010\nJ\u001d\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00028\u0000H\u0017\u00a2\u0006\u0002\u0010\rJ9\u0010\u000e\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00028\u00002\u0012\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00060\u0012H\u0017\u00a2\u0006\u0002\u0010\u0013\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/metamoji/lib/utils/CommandBase;",
        "T",
        "Lcom/metamoji/lib/utils/ICommand;",
        "<init>",
        "()V",
        "internalAttachView",
        "",
        "view",
        "Landroid/view/View;",
        "value",
        "(Landroid/view/View;Ljava/lang/Object;)V",
        "attachView",
        "Lcom/metamoji/lib/utils/IDisposable;",
        "(Landroid/view/View;Ljava/lang/Object;)Lcom/metamoji/lib/utils/IDisposable;",
        "attachAndBind",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "fn",
        "Lkotlin/Function1;",
        "(Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lcom/metamoji/lib/utils/IDisposable;",
        "ClickListenerDisposer",
        "utils"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final internalAttachView$lambda$0(Lcom/metamoji/lib/utils/CommandBase;Ljava/lang/Object;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p2, 0x6

    if-eq p3, p2, :cond_1

    if-eqz p4, :cond_0

    .line 60
    invoke-virtual {p4}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p4}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p2

    const/16 p3, 0x42

    if-eq p2, p3, :cond_1

    invoke-virtual {p4}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p2

    const/16 p3, 0xa0

    if-ne p2, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 61
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/metamoji/lib/utils/CommandBase;->invoke(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method static final internalAttachView$lambda$1(Lcom/metamoji/lib/utils/CommandBase;Ljava/lang/Object;Landroid/view/View;)V
    .locals 0

    .line 67
    invoke-virtual {p0, p1}, Lcom/metamoji/lib/utils/CommandBase;->invoke(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public attachAndBind(Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lcom/metamoji/lib/utils/IDisposable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroid/view/View;",
            "TT;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/metamoji/lib/utils/IDisposable;"
        }
    .end annotation

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fn"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0, p2, p3}, Lcom/metamoji/lib/utils/CommandBase;->internalAttachView(Landroid/view/View;Ljava/lang/Object;)V

    .line 81
    new-instance p3, Lcom/metamoji/lib/utils/CommandBase$ClickListenerDisposer;

    invoke-virtual {p0, p1, p4}, Lcom/metamoji/lib/utils/CommandBase;->bind(Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;)Lcom/metamoji/lib/utils/IDisposable;

    move-result-object p1

    invoke-direct {p3, p2, p1}, Lcom/metamoji/lib/utils/CommandBase$ClickListenerDisposer;-><init>(Landroid/view/View;Lcom/metamoji/lib/utils/IDisposable;)V

    check-cast p3, Lcom/metamoji/lib/utils/IDisposable;

    return-object p3
.end method

.method public attachView(Landroid/view/View;Ljava/lang/Object;)Lcom/metamoji/lib/utils/IDisposable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "TT;)",
            "Lcom/metamoji/lib/utils/IDisposable;"
        }
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/lib/utils/CommandBase;->internalAttachView(Landroid/view/View;Ljava/lang/Object;)V

    .line 75
    new-instance p2, Lcom/metamoji/lib/utils/CommandBase$ClickListenerDisposer;

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p2, p1, v0, v1, v0}, Lcom/metamoji/lib/utils/CommandBase$ClickListenerDisposer;-><init>(Landroid/view/View;Lcom/metamoji/lib/utils/IDisposable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p2, Lcom/metamoji/lib/utils/IDisposable;

    return-object p2
.end method

.method protected internalAttachView(Landroid/view/View;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "TT;)V"
        }
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    instance-of v0, p1, Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 59
    check-cast p1, Landroid/widget/EditText;

    new-instance v0, Lcom/metamoji/lib/utils/CommandBase$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/metamoji/lib/utils/CommandBase$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/lib/utils/CommandBase;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void

    .line 66
    :cond_0
    new-instance v0, Lcom/metamoji/lib/utils/CommandBase$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2}, Lcom/metamoji/lib/utils/CommandBase$$ExternalSyntheticLambda1;-><init>(Lcom/metamoji/lib/utils/CommandBase;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
