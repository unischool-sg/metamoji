.class Lcom/metamoji/ns/task/NsCollaboBgTaskForOwnerTool$1;
.super Ljava/lang/Object;
.source "NsCollaboBgTaskForOwnerTool.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/task/NsCollaboBgTaskForOwnerTool;->taskExec()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/task/NsCollaboBgTaskForOwnerTool;

.field final synthetic val$siteUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/task/NsCollaboBgTaskForOwnerTool;Ljava/lang/String;)V
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

    .line 135
    iput-object p1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForOwnerTool$1;->this$0:Lcom/metamoji/ns/task/NsCollaboBgTaskForOwnerTool;

    iput-object p2, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForOwnerTool$1;->val$siteUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 138
    new-instance v0, Lcom/metamoji/ui/dialog/PreviewView;

    invoke-direct {v0}, Lcom/metamoji/ui/dialog/PreviewView;-><init>()V

    .line 139
    sget v1, Lcom/metamoji/noteanytime/R$string;->ShareMenu_Browse_Owner_Site:I

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/dialog/PreviewView;->setTitle(I)V

    .line 140
    iget-object v1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForOwnerTool$1;->val$siteUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/dialog/PreviewView;->setUrl(Ljava/lang/String;)V

    .line 141
    const-string v1, "Owner_Site"

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/dialog/PreviewView;->safeShow(Ljava/lang/String;)V

    return-void
.end method
