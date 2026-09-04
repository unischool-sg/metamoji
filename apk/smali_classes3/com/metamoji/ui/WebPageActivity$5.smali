.class Lcom/metamoji/ui/WebPageActivity$5;
.super Ljava/lang/Object;
.source "WebPageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/WebPageActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/WebPageActivity;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/WebPageActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 309
    iput-object p1, p0, Lcom/metamoji/ui/WebPageActivity$5;->this$0:Lcom/metamoji/ui/WebPageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 312
    new-instance p1, Lcom/metamoji/un/web/BookmarkListDialog;

    invoke-direct {p1}, Lcom/metamoji/un/web/BookmarkListDialog;-><init>()V

    .line 313
    iget-object v0, p0, Lcom/metamoji/ui/WebPageActivity$5;->this$0:Lcom/metamoji/ui/WebPageActivity;

    invoke-static {v0}, Lcom/metamoji/ui/WebPageActivity;->-$$Nest$fget_webView(Lcom/metamoji/ui/WebPageActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/metamoji/un/web/BookmarkListDialog;->setAddedBookmarkName(Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lcom/metamoji/ui/WebPageActivity$5;->this$0:Lcom/metamoji/ui/WebPageActivity;

    invoke-static {v0}, Lcom/metamoji/ui/WebPageActivity;->-$$Nest$fget_webView(Lcom/metamoji/ui/WebPageActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/metamoji/un/web/BookmarkListDialog;->setAddedBookmarkUrl(Ljava/lang/String;)V

    .line 315
    new-instance v0, Lcom/metamoji/ui/WebPageActivity$5$1;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/ui/WebPageActivity$5$1;-><init>(Lcom/metamoji/ui/WebPageActivity$5;Lcom/metamoji/un/web/BookmarkListDialog;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/un/web/BookmarkListDialog;->setOnBookmarkSelectedListener(Lcom/metamoji/un/web/BookmarkListDialog$OnBookmarkSelected;)V

    .line 325
    iget-object v0, p0, Lcom/metamoji/ui/WebPageActivity$5;->this$0:Lcom/metamoji/ui/WebPageActivity;

    invoke-virtual {v0}, Lcom/metamoji/ui/WebPageActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "BookmarkList"

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/un/web/BookmarkListDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
