.class final Lcom/metamoji/nt/NtProxyAuthDriver$showProxyAuthDialog$2$1$2;
.super Ljava/lang/Object;
.source "NtProxyAuthDriver.kt"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtProxyAuthDriver$showProxyAuthDialog$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $editTextPass:Lcom/metamoji/cm/mutable/Mutable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/cm/mutable/Mutable<",
            "Lcom/metamoji/ui/common/UiEditText;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/metamoji/cm/mutable/Mutable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/cm/mutable/Mutable<",
            "Lcom/metamoji/ui/common/UiEditText;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/metamoji/nt/NtProxyAuthDriver$showProxyAuthDialog$2$1$2;->$editTextPass:Lcom/metamoji/cm/mutable/Mutable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x5

    if-ne p2, p1, :cond_1

    .line 67
    iget-object p1, p0, Lcom/metamoji/nt/NtProxyAuthDriver$showProxyAuthDialog$2$1$2;->$editTextPass:Lcom/metamoji/cm/mutable/Mutable;

    invoke-virtual {p1}, Lcom/metamoji/cm/mutable/Mutable;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 68
    iget-object p1, p0, Lcom/metamoji/nt/NtProxyAuthDriver$showProxyAuthDialog$2$1$2;->$editTextPass:Lcom/metamoji/cm/mutable/Mutable;

    invoke-virtual {p1}, Lcom/metamoji/cm/mutable/Mutable;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/common/UiEditText;

    invoke-virtual {p1}, Lcom/metamoji/ui/common/UiEditText;->requestFocus()Z

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
