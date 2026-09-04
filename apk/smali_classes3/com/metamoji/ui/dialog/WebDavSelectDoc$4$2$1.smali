.class Lcom/metamoji/ui/dialog/WebDavSelectDoc$4$2$1;
.super Ljava/lang/Object;
.source "WebDavSelectDoc.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/WebDavSelectDoc$4$2;->onCompleted(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/metamoji/ui/dialog/WebDavSelectDoc$4$2;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/WebDavSelectDoc$4$2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 196
    iput-object p1, p0, Lcom/metamoji/ui/dialog/WebDavSelectDoc$4$2$1;->this$2:Lcom/metamoji/ui/dialog/WebDavSelectDoc$4$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 199
    iget-object v0, p0, Lcom/metamoji/ui/dialog/WebDavSelectDoc$4$2$1;->this$2:Lcom/metamoji/ui/dialog/WebDavSelectDoc$4$2;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/WebDavSelectDoc$4$2;->val$result:Lcom/metamoji/cm/mutable/MutableInt;

    invoke-virtual {v0}, Lcom/metamoji/cm/mutable/MutableInt;->getValue()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_1

    const/16 v1, 0xc9

    if-eq v0, v1, :cond_1

    .line 208
    iget-object v1, p0, Lcom/metamoji/ui/dialog/WebDavSelectDoc$4$2$1;->this$2:Lcom/metamoji/ui/dialog/WebDavSelectDoc$4$2;

    const/16 v2, 0x195

    if-eq v0, v2, :cond_0

    .line 212
    iget-object v0, v1, Lcom/metamoji/ui/dialog/WebDavSelectDoc$4$2;->this$1:Lcom/metamoji/ui/dialog/WebDavSelectDoc$4;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/WebDavSelectDoc$4;->this$0:Lcom/metamoji/ui/dialog/WebDavSelectDoc;

    invoke-virtual {v0}, Lcom/metamoji/ui/dialog/WebDavSelectDoc;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$string;->WebDAV_Msg_Create_Directory_Failed:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/CabinetUtils;->showMsgDialog(Ljava/lang/String;)V

    return-void

    .line 208
    :cond_0
    iget-object v0, v1, Lcom/metamoji/ui/dialog/WebDavSelectDoc$4$2;->this$1:Lcom/metamoji/ui/dialog/WebDavSelectDoc$4;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/WebDavSelectDoc$4;->this$0:Lcom/metamoji/ui/dialog/WebDavSelectDoc;

    invoke-virtual {v0}, Lcom/metamoji/ui/dialog/WebDavSelectDoc;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$string;->WebDAV_Msg_Directry_Already_Exists:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/CabinetUtils;->showMsgDialog(Ljava/lang/String;)V

    return-void

    .line 203
    :cond_1
    iget-object v0, p0, Lcom/metamoji/ui/dialog/WebDavSelectDoc$4$2$1;->this$2:Lcom/metamoji/ui/dialog/WebDavSelectDoc$4$2;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/WebDavSelectDoc$4$2;->this$1:Lcom/metamoji/ui/dialog/WebDavSelectDoc$4;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/WebDavSelectDoc$4;->this$0:Lcom/metamoji/ui/dialog/WebDavSelectDoc;

    iget-object v1, p0, Lcom/metamoji/ui/dialog/WebDavSelectDoc$4$2$1;->this$2:Lcom/metamoji/ui/dialog/WebDavSelectDoc$4$2;

    iget-object v1, v1, Lcom/metamoji/ui/dialog/WebDavSelectDoc$4$2;->val$url:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/metamoji/ui/dialog/WebDavSelectDoc;->-$$Nest$fputmCurrentPath(Lcom/metamoji/ui/dialog/WebDavSelectDoc;Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/metamoji/ui/dialog/WebDavSelectDoc$4$2$1;->this$2:Lcom/metamoji/ui/dialog/WebDavSelectDoc$4$2;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/WebDavSelectDoc$4$2;->this$1:Lcom/metamoji/ui/dialog/WebDavSelectDoc$4;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/WebDavSelectDoc$4;->this$0:Lcom/metamoji/ui/dialog/WebDavSelectDoc;

    iget-object v1, p0, Lcom/metamoji/ui/dialog/WebDavSelectDoc$4$2$1;->this$2:Lcom/metamoji/ui/dialog/WebDavSelectDoc$4$2;

    iget-object v1, v1, Lcom/metamoji/ui/dialog/WebDavSelectDoc$4$2;->this$1:Lcom/metamoji/ui/dialog/WebDavSelectDoc$4;

    iget-object v1, v1, Lcom/metamoji/ui/dialog/WebDavSelectDoc$4;->this$0:Lcom/metamoji/ui/dialog/WebDavSelectDoc;

    invoke-static {v1}, Lcom/metamoji/ui/dialog/WebDavSelectDoc;->-$$Nest$fgetmCurrentPath(Lcom/metamoji/ui/dialog/WebDavSelectDoc;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/ui/dialog/WebDavSelectDoc;->-$$Nest$msetBaseDir(Lcom/metamoji/ui/dialog/WebDavSelectDoc;Ljava/lang/String;)V

    return-void
.end method
