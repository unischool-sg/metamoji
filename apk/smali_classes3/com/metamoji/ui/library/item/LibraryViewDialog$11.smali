.class Lcom/metamoji/ui/library/item/LibraryViewDialog$11;
.super Ljava/lang/Object;
.source "LibraryViewDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/library/item/LibraryViewDialog;->doDownload(Ljava/util/Map;Lcom/metamoji/lb/LbConstants$DownloadMode;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/library/item/LibraryViewDialog;

.field final synthetic val$fAppendPageIndex2:I


# direct methods
.method constructor <init>(Lcom/metamoji/ui/library/item/LibraryViewDialog;I)V
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

    .line 1801
    iput-object p1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$11;->this$0:Lcom/metamoji/ui/library/item/LibraryViewDialog;

    iput p2, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$11;->val$fAppendPageIndex2:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1804
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$11;->this$0:Lcom/metamoji/ui/library/item/LibraryViewDialog;

    iget v1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$11;->val$fAppendPageIndex2:I

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->setCurrentIndex(I)V

    return-void
.end method
