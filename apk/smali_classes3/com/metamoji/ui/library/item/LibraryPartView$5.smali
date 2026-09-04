.class Lcom/metamoji/ui/library/item/LibraryPartView$5;
.super Ljava/lang/Object;
.source "LibraryPartView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/library/item/LibraryPartView;->downloadDMThumbnail()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/library/item/LibraryPartView;

.field final synthetic val$docInfo:Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;

.field final synthetic val$driveId:Ljava/lang/String;

.field final synthetic val$entityId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/library/item/LibraryPartView;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;)V
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 273
    iput-object p1, p0, Lcom/metamoji/ui/library/item/LibraryPartView$5;->this$0:Lcom/metamoji/ui/library/item/LibraryPartView;

    iput-object p2, p0, Lcom/metamoji/ui/library/item/LibraryPartView$5;->val$driveId:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/ui/library/item/LibraryPartView$5;->val$entityId:Ljava/lang/String;

    iput-object p4, p0, Lcom/metamoji/ui/library/item/LibraryPartView$5;->val$docInfo:Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 276
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryPartView$5;->this$0:Lcom/metamoji/ui/library/item/LibraryPartView;

    iget-object v1, p0, Lcom/metamoji/ui/library/item/LibraryPartView$5;->val$driveId:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/ui/library/item/LibraryPartView$5;->val$entityId:Ljava/lang/String;

    iget-object v3, p0, Lcom/metamoji/ui/library/item/LibraryPartView$5;->val$docInfo:Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;

    invoke-virtual {v3}, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->getContentsRevision()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/metamoji/ui/library/item/LibraryPartView;->downloadThumbnail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
