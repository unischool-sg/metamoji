.class Lcom/metamoji/noteanytime/MainActivity$40$1$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/MainActivity$40$1;->call()Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/noteanytime/MainActivity$40$1;


# direct methods
.method constructor <init>(Lcom/metamoji/noteanytime/MainActivity$40$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2619
    iput-object p1, p0, Lcom/metamoji/noteanytime/MainActivity$40$1$1;->this$1:Lcom/metamoji/noteanytime/MainActivity$40$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 2623
    iget-object v0, p0, Lcom/metamoji/noteanytime/MainActivity$40$1$1;->this$1:Lcom/metamoji/noteanytime/MainActivity$40$1;

    iget-object v0, v0, Lcom/metamoji/noteanytime/MainActivity$40$1;->this$0:Lcom/metamoji/noteanytime/MainActivity$40;

    iget-object v0, v0, Lcom/metamoji/noteanytime/MainActivity$40;->val$toDriveId:Ljava/lang/String;

    invoke-static {v0}, Lcom/metamoji/dvm/DvmUtil;->sdDocumentManager(Ljava/lang/String;)Lcom/metamoji/sd/SdDriveDocumentManager;

    move-result-object v3

    .line 2624
    iget-object v0, p0, Lcom/metamoji/noteanytime/MainActivity$40$1$1;->this$1:Lcom/metamoji/noteanytime/MainActivity$40$1;

    iget-object v0, v0, Lcom/metamoji/noteanytime/MainActivity$40$1;->this$0:Lcom/metamoji/noteanytime/MainActivity$40;

    iget-object v1, v0, Lcom/metamoji/noteanytime/MainActivity$40;->val$fromDocMan:Lcom/metamoji/sd/SdDriveDocumentManager;

    iget-object v0, p0, Lcom/metamoji/noteanytime/MainActivity$40$1$1;->this$1:Lcom/metamoji/noteanytime/MainActivity$40$1;

    iget-object v2, v0, Lcom/metamoji/noteanytime/MainActivity$40$1;->val$docId:Ljava/lang/String;

    iget-object v0, p0, Lcom/metamoji/noteanytime/MainActivity$40$1$1;->this$1:Lcom/metamoji/noteanytime/MainActivity$40$1;

    iget-object v0, v0, Lcom/metamoji/noteanytime/MainActivity$40$1;->this$0:Lcom/metamoji/noteanytime/MainActivity$40;

    iget-object v0, v0, Lcom/metamoji/noteanytime/MainActivity$40;->val$toFolder:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getTags()Ljava/util/List;

    move-result-object v4

    iget-object v0, p0, Lcom/metamoji/noteanytime/MainActivity$40$1$1;->this$1:Lcom/metamoji/noteanytime/MainActivity$40$1;

    iget-object v0, v0, Lcom/metamoji/noteanytime/MainActivity$40$1;->this$0:Lcom/metamoji/noteanytime/MainActivity$40;

    iget-object v5, v0, Lcom/metamoji/noteanytime/MainActivity$40;->val$success:Lcom/metamoji/sd/SdSuccessBlock;

    iget-object v0, p0, Lcom/metamoji/noteanytime/MainActivity$40$1$1;->this$1:Lcom/metamoji/noteanytime/MainActivity$40$1;

    iget-object v0, v0, Lcom/metamoji/noteanytime/MainActivity$40$1;->this$0:Lcom/metamoji/noteanytime/MainActivity$40;

    iget-object v6, v0, Lcom/metamoji/noteanytime/MainActivity$40;->val$failure:Lcom/metamoji/sd/SdFailureBlock;

    invoke-virtual/range {v1 .. v6}, Lcom/metamoji/sd/SdDriveDocumentManager;->copyDocument(Ljava/lang/String;Lcom/metamoji/sd/SdDriveDocumentManager;Ljava/util/List;Lcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V

    return-void
.end method
