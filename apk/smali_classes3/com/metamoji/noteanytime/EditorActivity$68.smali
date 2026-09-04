.class Lcom/metamoji/noteanytime/EditorActivity$68;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/EditorActivity;->pageAddButtonSetting(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/noteanytime/EditorActivity;

.field final synthetic val$enable:Z


# direct methods
.method constructor <init>(Lcom/metamoji/noteanytime/EditorActivity;Z)V
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

    .line 5880
    iput-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$68;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    iput-boolean p2, p0, Lcom/metamoji/noteanytime/EditorActivity$68;->val$enable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 5883
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity$68;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    iget-boolean v1, p0, Lcom/metamoji/noteanytime/EditorActivity$68;->val$enable:Z

    invoke-virtual {v0, v1}, Lcom/metamoji/noteanytime/EditorActivity;->pageAddButtonSetting(Z)V

    return-void
.end method
