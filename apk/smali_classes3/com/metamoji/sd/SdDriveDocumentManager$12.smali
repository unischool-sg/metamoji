.class Lcom/metamoji/sd/SdDriveDocumentManager$12;
.super Ljava/lang/Object;
.source "SdDriveDocumentManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/sd/SdDriveDocumentManager;->closeDocument(Lcom/metamoji/dvm/fw/IDvmDocumentEditor;Lcom/metamoji/dm/DmDocumentManagerCloseMode;Lcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/sd/SdDriveDocumentManager;

.field final synthetic val$docId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/sd/SdDriveDocumentManager;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2815
    iput-object p1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$12;->this$0:Lcom/metamoji/sd/SdDriveDocumentManager;

    iput-object p2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$12;->val$docId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2817
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$12;->this$0:Lcom/metamoji/sd/SdDriveDocumentManager;

    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$12;->val$docId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/metamoji/sd/SdDriveDocumentManager;->turnOffEditFlag(Ljava/lang/String;)V

    return-void
.end method
