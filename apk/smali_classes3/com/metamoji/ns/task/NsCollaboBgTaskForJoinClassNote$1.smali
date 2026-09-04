.class Lcom/metamoji/ns/task/NsCollaboBgTaskForJoinClassNote$1;
.super Ljava/lang/Object;
.source "NsCollaboBgTaskForJoinClassNote.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/task/NsCollaboBgTaskForJoinClassNote;->taskExec()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/task/NsCollaboBgTaskForJoinClassNote;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/task/NsCollaboBgTaskForJoinClassNote;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 175
    iput-object p1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForJoinClassNote$1;->this$0:Lcom/metamoji/ns/task/NsCollaboBgTaskForJoinClassNote;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 178
    sget v0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_JOIN_CLASS_NOTE_MAX_ERROR:I

    invoke-static {v0}, Lcom/metamoji/ns/NsCollaboUtils;->showAlertMessage(I)V

    return-void
.end method
