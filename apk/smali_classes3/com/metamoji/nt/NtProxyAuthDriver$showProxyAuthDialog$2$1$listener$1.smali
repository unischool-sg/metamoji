.class final Lcom/metamoji/nt/NtProxyAuthDriver$showProxyAuthDialog$2$1$listener$1;
.super Ljava/lang/Object;
.source "NtProxyAuthDriver.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
.field final synthetic $credential:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/metamoji/network/NwProxyAuthManager$ProxyCredential;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $editTextPass:Lcom/metamoji/cm/mutable/Mutable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/cm/mutable/Mutable<",
            "Lcom/metamoji/ui/common/UiEditText;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $editTextUser:Lcom/metamoji/cm/mutable/Mutable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/cm/mutable/Mutable<",
            "Lcom/metamoji/ui/common/UiEditText;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/metamoji/cm/mutable/Mutable;Lcom/metamoji/cm/mutable/Mutable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/metamoji/network/NwProxyAuthManager$ProxyCredential;",
            ">;",
            "Lcom/metamoji/cm/mutable/Mutable<",
            "Lcom/metamoji/ui/common/UiEditText;",
            ">;",
            "Lcom/metamoji/cm/mutable/Mutable<",
            "Lcom/metamoji/ui/common/UiEditText;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/metamoji/nt/NtProxyAuthDriver$showProxyAuthDialog$2$1$listener$1;->$credential:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lcom/metamoji/nt/NtProxyAuthDriver$showProxyAuthDialog$2$1$listener$1;->$editTextUser:Lcom/metamoji/cm/mutable/Mutable;

    iput-object p3, p0, Lcom/metamoji/nt/NtProxyAuthDriver$showProxyAuthDialog$2$1$listener$1;->$editTextPass:Lcom/metamoji/cm/mutable/Mutable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 49
    iget-object p1, p0, Lcom/metamoji/nt/NtProxyAuthDriver$showProxyAuthDialog$2$1$listener$1;->$credential:Lkotlin/jvm/internal/Ref$ObjectRef;

    new-instance p2, Lcom/metamoji/network/NwProxyAuthManager$ProxyCredential;

    iget-object v0, p0, Lcom/metamoji/nt/NtProxyAuthDriver$showProxyAuthDialog$2$1$listener$1;->$editTextUser:Lcom/metamoji/cm/mutable/Mutable;

    invoke-virtual {v0}, Lcom/metamoji/cm/mutable/Mutable;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/common/UiEditText;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/nt/NtProxyAuthDriver$showProxyAuthDialog$2$1$listener$1;->$editTextPass:Lcom/metamoji/cm/mutable/Mutable;

    invoke-virtual {v1}, Lcom/metamoji/cm/mutable/Mutable;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ui/common/UiEditText;

    invoke-virtual {v1}, Lcom/metamoji/ui/common/UiEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Lcom/metamoji/network/NwProxyAuthManager$ProxyCredential;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :cond_0
    return-void
.end method
