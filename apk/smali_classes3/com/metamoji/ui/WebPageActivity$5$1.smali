.class Lcom/metamoji/ui/WebPageActivity$5$1;
.super Ljava/lang/Object;
.source "WebPageActivity.java"

# interfaces
.implements Lcom/metamoji/un/web/BookmarkListDialog$OnBookmarkSelected;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/WebPageActivity$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ui/WebPageActivity$5;

.field final synthetic val$dlg:Lcom/metamoji/un/web/BookmarkListDialog;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/WebPageActivity$5;Lcom/metamoji/un/web/BookmarkListDialog;)V
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

    .line 315
    iput-object p1, p0, Lcom/metamoji/ui/WebPageActivity$5$1;->this$1:Lcom/metamoji/ui/WebPageActivity$5;

    iput-object p2, p0, Lcom/metamoji/ui/WebPageActivity$5$1;->val$dlg:Lcom/metamoji/un/web/BookmarkListDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBookmarkSelected(Ljava/lang/String;)V
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/metamoji/ui/WebPageActivity$5$1;->val$dlg:Lcom/metamoji/un/web/BookmarkListDialog;

    invoke-virtual {v0}, Lcom/metamoji/un/web/BookmarkListDialog;->dismiss()V

    .line 321
    iget-object v0, p0, Lcom/metamoji/ui/WebPageActivity$5$1;->val$dlg:Lcom/metamoji/un/web/BookmarkListDialog;

    invoke-virtual {v0}, Lcom/metamoji/un/web/BookmarkListDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/WebPageActivity;

    .line 322
    invoke-static {v0}, Lcom/metamoji/ui/WebPageActivity;->-$$Nest$fget_webView(Lcom/metamoji/ui/WebPageActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
