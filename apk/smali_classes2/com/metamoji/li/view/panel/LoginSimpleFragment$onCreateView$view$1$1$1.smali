.class final synthetic Lcom/metamoji/li/view/panel/LoginSimpleFragment$onCreateView$view$1$1$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "LoginSimpleFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/li/view/panel/LoginSimpleFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1018
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/view/View;",
        "Lkotlin/Unit;",
        ">;"
    }
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


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 7

    const-class v3, Lcom/metamoji/li/view/panel/LoginSimpleFragment;

    const-string v5, "onLogin(Landroid/view/View;)V"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-string v4, "onLogin"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 61
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/metamoji/li/view/panel/LoginSimpleFragment$onCreateView$view$1$1$1;->invoke(Landroid/view/View;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/view/View;)V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/metamoji/li/view/panel/LoginSimpleFragment$onCreateView$view$1$1$1;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/metamoji/li/view/panel/LoginSimpleFragment;

    invoke-static {v0, p1}, Lcom/metamoji/li/view/panel/LoginSimpleFragment;->access$onLogin(Lcom/metamoji/li/view/panel/LoginSimpleFragment;Landroid/view/View;)V

    return-void
.end method
