.class Lcom/metamoji/tle/InputViewForTLE$MyInputConnection;
.super Landroid/view/inputmethod/BaseInputConnection;
.source "InputViewForTLE.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/tle/InputViewForTLE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyInputConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/tle/InputViewForTLE;


# direct methods
.method public constructor <init>(Lcom/metamoji/tle/InputViewForTLE;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 164
    iput-object p1, p0, Lcom/metamoji/tle/InputViewForTLE$MyInputConnection;->this$0:Lcom/metamoji/tle/InputViewForTLE;

    const/4 p1, 0x1

    .line 165
    invoke-direct {p0, p2, p1}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    return-void
.end method


# virtual methods
.method public performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 3

    .line 171
    const-string v0, "com.metamoji.mazecapi.client_notify.input_start"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/metamoji/tle/InputViewForTLE$MyInputConnection;->this$0:Lcom/metamoji/tle/InputViewForTLE;

    const-string/jumbo v1, "support_stroke2text"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/metamoji/tle/InputViewForTLE;->-$$Nest$fput_isSupportTLE(Lcom/metamoji/tle/InputViewForTLE;Z)V

    .line 173
    iget-object v0, p0, Lcom/metamoji/tle/InputViewForTLE$MyInputConnection;->this$0:Lcom/metamoji/tle/InputViewForTLE;

    invoke-static {v0}, Lcom/metamoji/tle/InputViewForTLE;->-$$Nest$fget_waitSupportTLE(Lcom/metamoji/tle/InputViewForTLE;)Lcom/metamoji/cm/ManualResetEvent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 174
    iget-object v0, p0, Lcom/metamoji/tle/InputViewForTLE$MyInputConnection;->this$0:Lcom/metamoji/tle/InputViewForTLE;

    invoke-static {v0}, Lcom/metamoji/tle/InputViewForTLE;->-$$Nest$fget_waitSupportTLE(Lcom/metamoji/tle/InputViewForTLE;)Lcom/metamoji/cm/ManualResetEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/cm/ManualResetEvent;->set()V

    goto :goto_0

    .line 176
    :cond_0
    const-string v0, "com.metamoji.mazecapi.action_reply.convert_strokes"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 178
    iget-object v0, p0, Lcom/metamoji/tle/InputViewForTLE$MyInputConnection;->this$0:Lcom/metamoji/tle/InputViewForTLE;

    const-string/jumbo v1, "text"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/tle/InputViewForTLE;->-$$Nest$fput_convertedText(Lcom/metamoji/tle/InputViewForTLE;Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/metamoji/tle/InputViewForTLE$MyInputConnection;->this$0:Lcom/metamoji/tle/InputViewForTLE;

    invoke-static {v0}, Lcom/metamoji/tle/InputViewForTLE;->-$$Nest$fget_waitConvertStrokes(Lcom/metamoji/tle/InputViewForTLE;)Lcom/metamoji/cm/ManualResetEvent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 180
    iget-object v0, p0, Lcom/metamoji/tle/InputViewForTLE$MyInputConnection;->this$0:Lcom/metamoji/tle/InputViewForTLE;

    invoke-static {v0}, Lcom/metamoji/tle/InputViewForTLE;->-$$Nest$fget_waitConvertStrokes(Lcom/metamoji/tle/InputViewForTLE;)Lcom/metamoji/cm/ManualResetEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/cm/ManualResetEvent;->set()V

    goto :goto_0

    .line 183
    :cond_1
    const-string p1, ""

    .line 185
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result p1

    return p1
.end method
