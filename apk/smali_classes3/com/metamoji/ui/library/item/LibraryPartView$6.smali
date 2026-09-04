.class Lcom/metamoji/ui/library/item/LibraryPartView$6;
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

.field final synthetic val$dmgr:Lcom/metamoji/dvm/fw/DvmDocumentManager;

.field final synthetic val$entityId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/library/item/LibraryPartView;Lcom/metamoji/dvm/fw/DvmDocumentManager;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
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

    .line 291
    iput-object p1, p0, Lcom/metamoji/ui/library/item/LibraryPartView$6;->this$0:Lcom/metamoji/ui/library/item/LibraryPartView;

    iput-object p2, p0, Lcom/metamoji/ui/library/item/LibraryPartView$6;->val$dmgr:Lcom/metamoji/dvm/fw/DvmDocumentManager;

    iput-object p3, p0, Lcom/metamoji/ui/library/item/LibraryPartView$6;->val$entityId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 294
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryPartView$6;->val$dmgr:Lcom/metamoji/dvm/fw/DvmDocumentManager;

    iget-object v1, p0, Lcom/metamoji/ui/library/item/LibraryPartView$6;->val$entityId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getDocumentContents(Ljava/lang/String;Lcom/metamoji/sd/cs/SdRequestCanceller;)Lcom/metamoji/dvm/fw/result/DvmDMResultWithOfflineFlag;

    return-void
.end method
