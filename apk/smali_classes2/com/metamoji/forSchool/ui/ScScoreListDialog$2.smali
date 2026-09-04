.class Lcom/metamoji/forSchool/ui/ScScoreListDialog$2;
.super Ljava/util/HashMap;
.source "ScScoreListDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/ui/ScScoreListDialog;->parseScoreList(Ljava/util/List;Ljava/util/List;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/forSchool/ui/ScScoreListDialog;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/ui/ScScoreListDialog;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 132
    iput-object p1, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog$2;->this$0:Lcom/metamoji/forSchool/ui/ScScoreListDialog;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string p1, "type"

    sget-object v0, Lcom/metamoji/forSchool/ui/ScScoreListDialog$ColumnType;->SCORE:Lcom/metamoji/forSchool/ui/ScScoreListDialog$ColumnType;

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/forSchool/ui/ScScoreListDialog$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget p1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SCORELISTDLG_COLUMN_SCORE:I

    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "title"

    invoke-virtual {p0, v0, p1}, Lcom/metamoji/forSchool/ui/ScScoreListDialog$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x5

    .line 134
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "align"

    invoke-virtual {p0, v0, p1}, Lcom/metamoji/forSchool/ui/ScScoreListDialog$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 p1, 0x428c0000    # 70.0f

    .line 135
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "width"

    invoke-virtual {p0, v0, p1}, Lcom/metamoji/forSchool/ui/ScScoreListDialog$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    .line 136
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "sortable"

    invoke-virtual {p0, v0, p1}, Lcom/metamoji/forSchool/ui/ScScoreListDialog$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
