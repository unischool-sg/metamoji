.class Lcom/metamoji/ns/NsCollaboCommand$43;
.super Ljava/lang/Object;
.source "NsCollaboCommand.java"

# interfaces
.implements Lcom/metamoji/ns/INsCollaboAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/NsCollaboCommand;->handleRestoreCollaboDocument(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$docId:Ljava/lang/String;

.field final synthetic val$driveId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3426
    iput-object p1, p0, Lcom/metamoji/ns/NsCollaboCommand$43;->val$driveId:Ljava/lang/String;

    iput-object p2, p0, Lcom/metamoji/ns/NsCollaboCommand$43;->val$docId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public action(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 3431
    new-instance p1, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForPreRestoreCollaboDocument;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForPreRestoreCollaboDocument;-><init>(Lcom/metamoji/ns/INsCollaboAction;)V

    .line 3432
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboCommand$43;->val$driveId:Ljava/lang/String;

    iput-object v0, p1, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForPreRestoreCollaboDocument;->driveId:Ljava/lang/String;

    .line 3433
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboCommand$43;->val$docId:Ljava/lang/String;

    iput-object v0, p1, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForPreRestoreCollaboDocument;->docId:Ljava/lang/String;

    .line 3434
    invoke-virtual {p1}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForPreRestoreCollaboDocument;->doInBackground()V

    :cond_0
    return-void
.end method
