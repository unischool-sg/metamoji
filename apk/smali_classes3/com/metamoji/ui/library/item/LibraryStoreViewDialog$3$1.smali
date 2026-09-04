.class Lcom/metamoji/ui/library/item/LibraryStoreViewDialog$3$1;
.super Ljava/lang/Object;
.source "LibraryStoreViewDialog.java"

# interfaces
.implements Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/library/item/LibraryStoreViewDialog$3;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ui/library/item/LibraryStoreViewDialog$3;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/library/item/LibraryStoreViewDialog$3;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 372
    iput-object p1, p0, Lcom/metamoji/ui/library/item/LibraryStoreViewDialog$3$1;->this$1:Lcom/metamoji/ui/library/item/LibraryStoreViewDialog$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callBack(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)V
    .locals 1

    .line 376
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance v0, Lcom/metamoji/ui/library/item/LibraryStoreViewDialog$3$1$1;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/library/item/LibraryStoreViewDialog$3$1$1;-><init>(Lcom/metamoji/ui/library/item/LibraryStoreViewDialog$3$1;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method
