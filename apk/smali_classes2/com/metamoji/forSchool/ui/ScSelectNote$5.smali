.class Lcom/metamoji/forSchool/ui/ScSelectNote$5;
.super Ljava/lang/Object;
.source "ScSelectNote.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/ui/ScSelectNote;->setThumbnailImage(Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;

.field final synthetic val$currentItem:Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;

.field final synthetic val$docId:Ljava/lang/String;

.field final synthetic val$docInfo:Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;

.field final synthetic val$thumbnail:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/ui/ScSelectNote;Ljava/lang/String;Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;Landroid/widget/ImageView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
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

    .line 1242
    iput-object p1, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$5;->this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;

    iput-object p2, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$5;->val$docId:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$5;->val$docInfo:Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;

    iput-object p4, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$5;->val$currentItem:Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;

    iput-object p5, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$5;->val$thumbnail:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1245
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$5;->this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;

    invoke-static {v0}, Lcom/metamoji/forSchool/ui/ScSelectNote;->-$$Nest$fget_nowDriveId(Lcom/metamoji/forSchool/ui/ScSelectNote;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$5;->val$docId:Ljava/lang/String;

    iget-object v3, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$5;->val$docInfo:Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;

    invoke-virtual {v3}, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->getContentsRevision()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$5;->val$currentItem:Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;

    iget-object v5, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$5;->val$thumbnail:Landroid/widget/ImageView;

    invoke-virtual/range {v0 .. v5}, Lcom/metamoji/forSchool/ui/ScSelectNote;->downloadThumbnail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;Landroid/widget/ImageView;)V

    return-void
.end method
