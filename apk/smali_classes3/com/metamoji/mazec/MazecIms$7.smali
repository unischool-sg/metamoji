.class Lcom/metamoji/mazec/MazecIms$7;
.super Ljava/lang/Object;
.source "MazecIms.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/mazec/MazecIms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/mazec/MazecIms;


# direct methods
.method constructor <init>(Lcom/metamoji/mazec/MazecIms;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 3079
    iput-object p1, p0, Lcom/metamoji/mazec/MazecIms$7;->this$0:Lcom/metamoji/mazec/MazecIms;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 3081
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms$7;->this$0:Lcom/metamoji/mazec/MazecIms;

    iget-object v0, v0, Lcom/metamoji/mazec/MazecIms;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-eqz v0, :cond_0

    .line 3082
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms$7;->this$0:Lcom/metamoji/mazec/MazecIms;

    iget-object v1, v0, Lcom/metamoji/mazec/MazecIms;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget-object v1, v1, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/metamoji/mazec/MazecIms;->reflectMushResult(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3083
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms$7;->this$0:Lcom/metamoji/mazec/MazecIms;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Lcom/metamoji/mazec/MazecIms;->sendDownUpKeyEvents(I)V

    :cond_0
    return-void
.end method
