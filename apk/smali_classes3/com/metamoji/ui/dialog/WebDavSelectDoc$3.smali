.class Lcom/metamoji/ui/dialog/WebDavSelectDoc$3;
.super Ljava/lang/Object;
.source "WebDavSelectDoc.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/WebDavSelectDoc;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/dialog/WebDavSelectDoc;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/WebDavSelectDoc;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 151
    iput-object p1, p0, Lcom/metamoji/ui/dialog/WebDavSelectDoc$3;->this$0:Lcom/metamoji/ui/dialog/WebDavSelectDoc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 154
    iget-object p1, p0, Lcom/metamoji/ui/dialog/WebDavSelectDoc$3;->this$0:Lcom/metamoji/ui/dialog/WebDavSelectDoc;

    invoke-virtual {p1}, Lcom/metamoji/ui/dialog/WebDavSelectDoc;->handleCreateFolderButtonTap()V

    return-void
.end method
