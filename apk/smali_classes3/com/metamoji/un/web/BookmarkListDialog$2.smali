.class Lcom/metamoji/un/web/BookmarkListDialog$2;
.super Ljava/lang/Object;
.source "BookmarkListDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/web/BookmarkListDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/un/web/BookmarkListDialog;


# direct methods
.method constructor <init>(Lcom/metamoji/un/web/BookmarkListDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 143
    iput-object p1, p0, Lcom/metamoji/un/web/BookmarkListDialog$2;->this$0:Lcom/metamoji/un/web/BookmarkListDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 146
    iget-object p1, p0, Lcom/metamoji/un/web/BookmarkListDialog$2;->this$0:Lcom/metamoji/un/web/BookmarkListDialog;

    invoke-static {p1}, Lcom/metamoji/un/web/BookmarkListDialog;->-$$Nest$mdeleteItems(Lcom/metamoji/un/web/BookmarkListDialog;)V

    return-void
.end method
