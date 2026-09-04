.class Lcom/metamoji/sqldb/SqlModelImpl$1;
.super Ljava/lang/Object;
.source "SqlModelImpl.java"

# interfaces
.implements Lcom/metamoji/sqldb/SqlConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/sqldb/SqlModelImpl;->generateRowsElement(Lorg/w3c/dom/Document;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;Ljava/lang/String;Ljava/util/List;)Lorg/w3c/dom/Element;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/metamoji/sqldb/SqlConsumer<",
        "Lcom/metamoji/sqldb/SqlResultSet;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/sqldb/SqlModelImpl;

.field final synthetic val$columnInfos:Ljava/util/List;

.field final synthetic val$document:Lorg/w3c/dom/Document;

.field final synthetic val$rowCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic val$rowsElement:Lorg/w3c/dom/Element;


# direct methods
.method constructor <init>(Lcom/metamoji/sqldb/SqlModelImpl;Lorg/w3c/dom/Document;Ljava/util/List;Lorg/w3c/dom/Element;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 577
    iput-object p1, p0, Lcom/metamoji/sqldb/SqlModelImpl$1;->this$0:Lcom/metamoji/sqldb/SqlModelImpl;

    iput-object p2, p0, Lcom/metamoji/sqldb/SqlModelImpl$1;->val$document:Lorg/w3c/dom/Document;

    iput-object p3, p0, Lcom/metamoji/sqldb/SqlModelImpl$1;->val$columnInfos:Ljava/util/List;

    iput-object p4, p0, Lcom/metamoji/sqldb/SqlModelImpl$1;->val$rowsElement:Lorg/w3c/dom/Element;

    iput-object p5, p0, Lcom/metamoji/sqldb/SqlModelImpl$1;->val$rowCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/metamoji/sqldb/SqlResultSet;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/sqldb/SqlDatabaseException;
        }
    .end annotation

    .line 580
    iget-object v0, p0, Lcom/metamoji/sqldb/SqlModelImpl$1;->val$document:Lorg/w3c/dom/Document;

    const-string/jumbo v1, "row"

    const-string v2, "http://xmlns.metamoji.com/noteanytime/sqldb/1.0"

    invoke-interface {v0, v2, v1}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 581
    iget-object v1, p0, Lcom/metamoji/sqldb/SqlModelImpl$1;->val$columnInfos:Ljava/util/List;

    const/4 v3, 0x1

    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_6

    .line 582
    iget-object v5, p0, Lcom/metamoji/sqldb/SqlModelImpl$1;->val$columnInfos:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/metamoji/sqldb/SqlColumnInfo;

    .line 583
    iget-object v6, p0, Lcom/metamoji/sqldb/SqlModelImpl$1;->val$document:Lorg/w3c/dom/Document;

    const-string v7, "column"

    invoke-interface {v6, v2, v7}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v6

    .line 584
    invoke-interface {v5}, Lcom/metamoji/sqldb/SqlColumnInfo;->type()Lcom/metamoji/sqldb/SqlColumnType;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    .line 585
    invoke-interface {p1, v4}, Lcom/metamoji/sqldb/SqlResultSet;->type(I)Lcom/metamoji/sqldb/SqlColumnType;

    move-result-object v7

    .line 586
    sget-object v8, Lcom/metamoji/sqldb/SqlColumnType;->SQL_COLUMN_TYPE_ANY:Lcom/metamoji/sqldb/SqlColumnType;

    const/4 v9, 0x0

    if-ne v5, v8, :cond_0

    .line 589
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v7}, Lcom/metamoji/sqldb/SqlColumnType;->getValue()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    const-string v10, "%d"

    invoke-static {v5, v10, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v8, "type"

    invoke-interface {v6, v9, v8, v5}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v7

    .line 591
    :cond_0
    sget-object v8, Lcom/metamoji/sqldb/SqlColumnType;->SQL_COLUMN_TYPE_NULL:Lcom/metamoji/sqldb/SqlColumnType;

    if-ne v7, v8, :cond_1

    .line 593
    sget-object v5, Lcom/metamoji/sqldb/SqlColumnType;->SQL_COLUMN_TYPE_NULL:Lcom/metamoji/sqldb/SqlColumnType;

    .line 594
    const-string v7, "null"

    const-string/jumbo v8, "yes"

    invoke-interface {v6, v9, v7, v8}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    :cond_1
    sget-object v7, Lcom/metamoji/sqldb/SqlModelImpl$3;->$SwitchMap$com$metamoji$sqldb$SqlColumnType:[I

    invoke-virtual {v5}, Lcom/metamoji/sqldb/SqlColumnType;->ordinal()I

    move-result v5

    aget v5, v7, v5

    if-eq v5, v3, :cond_5

    const/4 v7, 0x2

    if-eq v5, v7, :cond_4

    const/4 v8, 0x3

    if-eq v5, v8, :cond_3

    const/4 v8, 0x4

    if-eq v5, v8, :cond_2

    goto :goto_1

    .line 607
    :cond_2
    iget-object v5, p0, Lcom/metamoji/sqldb/SqlModelImpl$1;->val$document:Lorg/w3c/dom/Document;

    invoke-interface {p1, v4}, Lcom/metamoji/sqldb/SqlResultSet;->getBlob(I)[B

    move-result-object v8

    invoke-static {v8, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v5

    invoke-interface {v6, v5}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_1

    .line 604
    :cond_3
    iget-object v5, p0, Lcom/metamoji/sqldb/SqlModelImpl$1;->val$document:Lorg/w3c/dom/Document;

    invoke-interface {p1, v4}, Lcom/metamoji/sqldb/SqlResultSet;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v5

    invoke-interface {v6, v5}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_1

    .line 601
    :cond_4
    iget-object v5, p0, Lcom/metamoji/sqldb/SqlModelImpl$1;->val$document:Lorg/w3c/dom/Document;

    invoke-interface {p1, v4}, Lcom/metamoji/sqldb/SqlResultSet;->getDouble(I)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v5

    invoke-interface {v6, v5}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_1

    .line 598
    :cond_5
    iget-object v5, p0, Lcom/metamoji/sqldb/SqlModelImpl$1;->val$document:Lorg/w3c/dom/Document;

    invoke-interface {p1, v4}, Lcom/metamoji/sqldb/SqlResultSet;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v5

    invoke-interface {v6, v5}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 613
    :goto_1
    invoke-interface {v0, v6}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto/16 :goto_0

    .line 615
    :cond_6
    iget-object p1, p0, Lcom/metamoji/sqldb/SqlModelImpl$1;->val$rowsElement:Lorg/w3c/dom/Element;

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 616
    iget-object p1, p0, Lcom/metamoji/sqldb/SqlModelImpl$1;->val$rowCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/sqldb/SqlDatabaseException;
        }
    .end annotation

    .line 577
    check-cast p1, Lcom/metamoji/sqldb/SqlResultSet;

    invoke-virtual {p0, p1}, Lcom/metamoji/sqldb/SqlModelImpl$1;->accept(Lcom/metamoji/sqldb/SqlResultSet;)V

    return-void
.end method
