.class final synthetic Lcom/metamoji/li/dialog/SelectOrganizationDialog$createBodyView$2$3;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SelectOrganizationDialog.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/li/dialog/SelectOrganizationDialog;->createBodyView(Landroid/os/Bundle;Lcom/metamoji/lib/dialog/UtDialog$IViewInflater;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1018
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Boolean;",
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

    const-class v3, Lcom/metamoji/li/dialog/SelectOrganizationDialog;

    const-string v5, "onEditModeChanged(Ljava/lang/Boolean;)V"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-string v4, "onEditModeChanged"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 379
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/metamoji/li/dialog/SelectOrganizationDialog$createBodyView$2$3;->invoke(Ljava/lang/Boolean;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Boolean;)V
    .locals 1

    .line 379
    iget-object v0, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog$createBodyView$2$3;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/metamoji/li/dialog/SelectOrganizationDialog;

    invoke-static {v0, p1}, Lcom/metamoji/li/dialog/SelectOrganizationDialog;->access$onEditModeChanged(Lcom/metamoji/li/dialog/SelectOrganizationDialog;Ljava/lang/Boolean;)V

    return-void
.end method
