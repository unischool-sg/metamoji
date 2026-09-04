.class Lcom/metamoji/ns/NsCollaboCommand$34$2;
.super Ljava/lang/Object;
.source "NsCollaboCommand.java"

# interfaces
.implements Lcom/metamoji/cm/CmTaskManager$IOnCompleted;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/NsCollaboCommand$34;->action(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/NsCollaboCommand$34;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/NsCollaboCommand$34;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2867
    iput-object p1, p0, Lcom/metamoji/ns/NsCollaboCommand$34$2;->this$0:Lcom/metamoji/ns/NsCollaboCommand$34;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/lang/Throwable;)V
    .locals 1

    .line 2871
    iget-object p1, p0, Lcom/metamoji/ns/NsCollaboCommand$34$2;->this$0:Lcom/metamoji/ns/NsCollaboCommand$34;

    iget-object p1, p1, Lcom/metamoji/ns/NsCollaboCommand$34;->val$collaboManager:Lcom/metamoji/ns/NsCollaboManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/metamoji/ns/NsCollaboManager;->executeConnectRoomAfterAction(Z)V

    return-void
.end method
