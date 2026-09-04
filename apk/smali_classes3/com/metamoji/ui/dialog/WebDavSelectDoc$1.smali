.class Lcom/metamoji/ui/dialog/WebDavSelectDoc$1;
.super Ljava/lang/Object;
.source "WebDavSelectDoc.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 120
    iput-object p1, p0, Lcom/metamoji/ui/dialog/WebDavSelectDoc$1;->this$0:Lcom/metamoji/ui/dialog/WebDavSelectDoc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/metamoji/ui/dialog/WebDavSelectDoc$1;->this$0:Lcom/metamoji/ui/dialog/WebDavSelectDoc;

    invoke-static {v0}, Lcom/metamoji/ui/dialog/WebDavSelectDoc;->-$$Nest$fgetmCurrentPath(Lcom/metamoji/ui/dialog/WebDavSelectDoc;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/ui/dialog/WebDavSelectDoc;->-$$Nest$msetBaseDir(Lcom/metamoji/ui/dialog/WebDavSelectDoc;Ljava/lang/String;)V

    return-void
.end method
