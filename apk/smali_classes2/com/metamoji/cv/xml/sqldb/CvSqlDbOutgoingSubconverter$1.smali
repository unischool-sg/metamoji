.class Lcom/metamoji/cv/xml/sqldb/CvSqlDbOutgoingSubconverter$1;
.super Ljava/lang/Object;
.source "CvSqlDbOutgoingSubconverter.java"

# interfaces
.implements Lcom/metamoji/sqldb/SqlConsumer2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/cv/xml/sqldb/CvSqlDbOutgoingSubconverter;->convert(Lcom/metamoji/cv/CvConvertItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/metamoji/sqldb/SqlConsumer2<",
        "Lcom/metamoji/df/model/IModel;",
        "Lcom/metamoji/sqldb/SqlDatabase;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/cv/xml/sqldb/CvSqlDbOutgoingSubconverter;

.field final synthetic val$context:Lcom/metamoji/cv/xml/CvDirectoryConvertContext;


# direct methods
.method constructor <init>(Lcom/metamoji/cv/xml/sqldb/CvSqlDbOutgoingSubconverter;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V
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

    .line 106
    iput-object p1, p0, Lcom/metamoji/cv/xml/sqldb/CvSqlDbOutgoingSubconverter$1;->this$0:Lcom/metamoji/cv/xml/sqldb/CvSqlDbOutgoingSubconverter;

    iput-object p2, p0, Lcom/metamoji/cv/xml/sqldb/CvSqlDbOutgoingSubconverter$1;->val$context:Lcom/metamoji/cv/xml/CvDirectoryConvertContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/metamoji/df/model/IModel;Lcom/metamoji/sqldb/SqlDatabase;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/sqldb/SqlDatabaseException;
        }
    .end annotation

    .line 109
    const-string v0, "datakind"

    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 110
    const-string v0, "CT_SQLDB"

    if-ne v0, p1, :cond_1

    .line 112
    iget-object p1, p0, Lcom/metamoji/cv/xml/sqldb/CvSqlDbOutgoingSubconverter$1;->this$0:Lcom/metamoji/cv/xml/sqldb/CvSqlDbOutgoingSubconverter;

    iget-object v0, p0, Lcom/metamoji/cv/xml/sqldb/CvSqlDbOutgoingSubconverter$1;->val$context:Lcom/metamoji/cv/xml/CvDirectoryConvertContext;

    sget-object v1, Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;->REMOVED:Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/cv/xml/sqldb/CvSqlDbOutgoingSubconverter;->contextHasVcOption(Lcom/metamoji/cv/xml/CvDirectoryConvertContext;Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 114
    iget-object p1, p0, Lcom/metamoji/cv/xml/sqldb/CvSqlDbOutgoingSubconverter$1;->this$0:Lcom/metamoji/cv/xml/sqldb/CvSqlDbOutgoingSubconverter;

    invoke-virtual {p1, p2}, Lcom/metamoji/cv/xml/sqldb/CvSqlDbOutgoingSubconverter;->removeVoiceLinkTag(Lcom/metamoji/sqldb/SqlDatabase;)V

    .line 116
    :cond_0
    iget-object p1, p0, Lcom/metamoji/cv/xml/sqldb/CvSqlDbOutgoingSubconverter$1;->this$0:Lcom/metamoji/cv/xml/sqldb/CvSqlDbOutgoingSubconverter;

    iget-object v0, p0, Lcom/metamoji/cv/xml/sqldb/CvSqlDbOutgoingSubconverter$1;->val$context:Lcom/metamoji/cv/xml/CvDirectoryConvertContext;

    invoke-virtual {p1, v0}, Lcom/metamoji/cv/xml/sqldb/CvSqlDbOutgoingSubconverter;->contextHasMergeInfo(Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 118
    iget-object p1, p0, Lcom/metamoji/cv/xml/sqldb/CvSqlDbOutgoingSubconverter$1;->val$context:Lcom/metamoji/cv/xml/CvDirectoryConvertContext;

    const-class v0, Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;

    invoke-static {p1, v0}, Lcom/metamoji/cm/CmUtils;->as(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;

    iget-object p1, p1, Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;->mergeInfo:Lcom/metamoji/cv/xml/CvMergeInfo;

    .line 119
    iget-object v0, p0, Lcom/metamoji/cv/xml/sqldb/CvSqlDbOutgoingSubconverter$1;->this$0:Lcom/metamoji/cv/xml/sqldb/CvSqlDbOutgoingSubconverter;

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/cv/xml/sqldb/CvSqlDbOutgoingSubconverter;->mergeTag(Lcom/metamoji/cv/xml/CvMergeInfo;Lcom/metamoji/sqldb/SqlDatabase;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/sqldb/SqlDatabaseException;
        }
    .end annotation

    .line 106
    check-cast p1, Lcom/metamoji/df/model/IModel;

    check-cast p2, Lcom/metamoji/sqldb/SqlDatabase;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/cv/xml/sqldb/CvSqlDbOutgoingSubconverter$1;->accept(Lcom/metamoji/df/model/IModel;Lcom/metamoji/sqldb/SqlDatabase;)V

    return-void
.end method
