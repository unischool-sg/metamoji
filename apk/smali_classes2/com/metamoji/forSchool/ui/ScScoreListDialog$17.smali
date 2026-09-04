.class Lcom/metamoji/forSchool/ui/ScScoreListDialog$17;
.super Ljava/lang/Object;
.source "ScScoreListDialog.java"

# interfaces
.implements Lcom/metamoji/ce/io/CeCsvComposer$CeCsvComposerHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/ui/ScScoreListDialog;->extractCSVTextWithLineSeparator(Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/forSchool/ui/ScScoreListDialog;

.field final synthetic val$csvText:Ljava/lang/StringBuffer;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/ui/ScScoreListDialog;Ljava/lang/StringBuffer;)V
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

    .line 1099
    iput-object p1, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog$17;->this$0:Lcom/metamoji/forSchool/ui/ScScoreListDialog;

    iput-object p2, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog$17;->val$csvText:Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Ljava/lang/String;)V
    .locals 1

    .line 1102
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog$17;->val$csvText:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method
