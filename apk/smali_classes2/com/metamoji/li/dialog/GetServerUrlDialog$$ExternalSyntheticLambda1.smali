.class public final synthetic Lcom/metamoji/li/dialog/GetServerUrlDialog$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/li/dialog/GetServerUrlDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/li/dialog/GetServerUrlDialog;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/li/dialog/GetServerUrlDialog$$ExternalSyntheticLambda1;->f$0:Lcom/metamoji/li/dialog/GetServerUrlDialog;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/metamoji/li/dialog/GetServerUrlDialog$$ExternalSyntheticLambda1;->f$0:Lcom/metamoji/li/dialog/GetServerUrlDialog;

    check-cast p1, Landroid/widget/TextView;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-static {v0, p1, p2, p3}, Lcom/metamoji/li/dialog/GetServerUrlDialog;->preCreateBodyView$lambda$0(Lcom/metamoji/li/dialog/GetServerUrlDialog;Landroid/widget/TextView;IZ)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
