.class Lcom/metamoji/ui/library/item/LibraryStoreViewDialog$3$1$1;
.super Ljava/lang/Object;
.source "LibraryStoreViewDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/library/item/LibraryStoreViewDialog$3$1;->callBack(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/metamoji/ui/library/item/LibraryStoreViewDialog$3$1;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/library/item/LibraryStoreViewDialog$3$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 376
    iput-object p1, p0, Lcom/metamoji/ui/library/item/LibraryStoreViewDialog$3$1$1;->this$2:Lcom/metamoji/ui/library/item/LibraryStoreViewDialog$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 380
    invoke-static {}, Lcom/metamoji/ui/dialog/UiDialog;->showTopDialog()V

    return-void
.end method
