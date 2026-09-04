.class Lcom/metamoji/ns/NsCollaboCommand$41;
.super Ljava/lang/Object;
.source "NsCollaboCommand.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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

    .line 3280
    iput-object p1, p0, Lcom/metamoji/ns/NsCollaboCommand$41;->val$bCancel:Ljava/util/List;

    iput-object p2, p0, Lcom/metamoji/ns/NsCollaboCommand$41;->val$action:Lcom/metamoji/ns/INsCollaboAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 3283
    iget-object p1, p0, Lcom/metamoji/ns/NsCollaboCommand$41;->val$bCancel:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 3285
    iget-object p1, p0, Lcom/metamoji/ns/NsCollaboCommand$41;->val$action:Lcom/metamoji/ns/INsCollaboAction;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/metamoji/ns/INsCollaboAction;->action(Z)V

    :cond_0
    return-void
.end method
