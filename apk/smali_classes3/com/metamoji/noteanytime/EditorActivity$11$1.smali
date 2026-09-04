.class Lcom/metamoji/noteanytime/EditorActivity$11$1;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Lcom/metamoji/nt/cabinet/cabinetWaitView$ICancelAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/EditorActivity$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/noteanytime/EditorActivity$11;

.field final synthetic val$resultString:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Lcom/metamoji/noteanytime/EditorActivity$11;Ljava/lang/StringBuilder;)V
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

    .line 1176
    iput-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$11$1;->this$1:Lcom/metamoji/noteanytime/EditorActivity$11;

    iput-object p2, p0, Lcom/metamoji/noteanytime/EditorActivity$11$1;->val$resultString:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public action()V
    .locals 2

    .line 1179
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity$11$1;->val$resultString:Ljava/lang/StringBuilder;

    const-string v1, "canceled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method
