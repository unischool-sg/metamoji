.class Lcom/metamoji/nt/NtNoteController$39;
.super Lcom/metamoji/sd/SdSuccessBlock;
.source "NtNoteController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtNoteController;->addPageWithDoc(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtNoteController;

.field final synthetic val$docID:Ljava/lang/String;

.field final synthetic val$editor:Lcom/metamoji/cm/mutable/Mutable;

.field final synthetic val$sddmgr:Lcom/metamoji/sd/SdDriveDocumentManager;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/sd/SdDriveDocumentManager;Ljava/lang/String;Lcom/metamoji/cm/mutable/Mutable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 5444
    iput-object p1, p0, Lcom/metamoji/nt/NtNoteController$39;->this$0:Lcom/metamoji/nt/NtNoteController;

    iput-object p2, p0, Lcom/metamoji/nt/NtNoteController$39;->val$sddmgr:Lcom/metamoji/sd/SdDriveDocumentManager;

    iput-object p3, p0, Lcom/metamoji/nt/NtNoteController$39;->val$docID:Ljava/lang/String;

    iput-object p4, p0, Lcom/metamoji/nt/NtNoteController$39;->val$editor:Lcom/metamoji/cm/mutable/Mutable;

    invoke-direct {p0}, Lcom/metamoji/sd/SdSuccessBlock;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5444
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController$39;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5447
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController$39;->val$sddmgr:Lcom/metamoji/sd/SdDriveDocumentManager;

    iget-object v1, p0, Lcom/metamoji/nt/NtNoteController$39;->val$docID:Ljava/lang/String;

    new-instance v2, Lcom/metamoji/nt/NtNoteController$39$1;

    invoke-direct {v2, p0}, Lcom/metamoji/nt/NtNoteController$39$1;-><init>(Lcom/metamoji/nt/NtNoteController$39;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/metamoji/sd/SdDriveDocumentManager;->quickViewDocument(Ljava/lang/String;Lcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V

    return-object v3
.end method
