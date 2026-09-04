.class Lcom/metamoji/un/web/BookmarkListDialog$3;
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

    .line 160
    iput-object p1, p0, Lcom/metamoji/un/web/BookmarkListDialog$3;->this$0:Lcom/metamoji/un/web/BookmarkListDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 163
    iget-object p1, p0, Lcom/metamoji/un/web/BookmarkListDialog$3;->this$0:Lcom/metamoji/un/web/BookmarkListDialog;

    invoke-static {p1}, Lcom/metamoji/un/web/BookmarkListDialog;->-$$Nest$fget_isEditable(Lcom/metamoji/un/web/BookmarkListDialog;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/metamoji/un/web/BookmarkListDialog;->-$$Nest$msetEditable(Lcom/metamoji/un/web/BookmarkListDialog;Z)V

    return-void
.end method
