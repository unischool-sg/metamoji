.class Lcom/metamoji/ns/NsCollaboCommand$39;
.super Ljava/lang/Object;
.source "NsCollaboCommand.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/NsCollaboCommand;->execActionAterReceiveAllData(Lcom/metamoji/ns/INsCollaboAction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$action:Lcom/metamoji/ns/INsCollaboAction;

.field final synthetic val$bCancel:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/metamoji/ns/INsCollaboAction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3260
    iput-object p1, p0, Lcom/metamoji/ns/NsCollaboCommand$39;->val$bCancel:Ljava/util/List;

    iput-object p2, p0, Lcom/metamoji/ns/NsCollaboCommand$39;->val$action:Lcom/metamoji/ns/INsCollaboAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 3263
    iget-object p1, p0, Lcom/metamoji/ns/NsCollaboCommand$39;->val$bCancel:Ljava/util/List;

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3265
    iget-object p1, p0, Lcom/metamoji/ns/NsCollaboCommand$39;->val$action:Lcom/metamoji/ns/INsCollaboAction;

    invoke-static {p1}, Lcom/metamoji/ns/NsCollaboCommand;->collaboReceiveAllDataExec(Lcom/metamoji/ns/INsCollaboAction;)V

    return-void
.end method
