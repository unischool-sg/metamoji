.class Lcom/metamoji/sqldb/SqlPreparedStatementImpl;
.super Ljava/lang/Object;
.source "SqlPreparedStatementImpl.java"

# interfaces
.implements Lcom/metamoji/sqldb/SqlPreparedStatement;


# instance fields
.field context:Lcom/metamoji/sqldb/SqlThreadContext;

.field database:Lcom/metamoji/sqldb/SqlDatabaseImpl;

.field sqlite3_stmt:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lcom/metamoji/sqldb/SqlJniCallHarness;

    invoke-direct {v0}, Lcom/metamoji/sqldb/SqlJniCallHarness;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/metamoji/sqldb/SqlDatabaseImpl;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/sqldb/SqlDatabaseException;
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->database:Lcom/metamoji/sqldb/SqlDatabaseImpl;

    .line 28
    iget-wide v0, p1, Lcom/metamoji/sqldb/SqlDatabaseImpl;->sqlite3:J

    invoke-direct {p0, v0, v1, p2}, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->prepare_(JLjava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->sqlite3_stmt:J

    .line 29
    new-instance p1, Lcom/metamoji/sqldb/SqlThreadContext;

    iget-object p2, p0, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->database:Lcom/metamoji/sqldb/SqlDatabaseImpl;

    iget-object p2, p2, Lcom/metamoji/sqldb/SqlDatabaseImpl;->databaseFilePath:Ljava/lang/String;

    invoke-direct {p1, p2}, Lcom/metamoji/sqldb/SqlThreadContext;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->context:Lcom/metamoji/sqldb/SqlThreadContext;

    return-void
.end method

.method private native bindBlob_(JJI[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/sqldb/SqlDatabaseException;
        }
    .end annotation
.end method

.method private native bindDouble_(JJID)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/sqldb/SqlDatabaseException;
        }
    .end annotation
.end method

.method private native bindLong_(JJIJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/sqldb/SqlDatabaseException;
        }
    .end annotation
.end method

.method private native bindNull_(JJI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/sqldb/SqlDatabaseException;
        }
    .end annotation
.end method

.method private native bindParameterIndex_(JJLjava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/sqldb/SqlDatabaseException;
        }
    .end annotation
.end method

.method private native bindString_(JJILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/sqldb/SqlDatabaseException;
        }
    .end annotation
.end method

.method private native changes_(J)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/sqldb/SqlDatabaseException;
        }
    .end annotation
.end method

.method private native close_(JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/sqldb/SqlDatabaseException;
        }
    .end annotation
.end method

.method private native prepare_(JLjava/lang/String;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/sqldb/SqlDatabaseException;
        }
    .end annotation
.end method

.method private native reset_(JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/sqldb/SqlDatabaseException;
        }
    .end annotation
.end method

.method private native step_(JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/sqldb/SqlDatabaseException;
        }
    .end annotation
.end method


# virtual methods
.method bindNamedParameter(Ljava/util/Map;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/sqldb/SqlDatabaseException;
        }
    .end annotation

    if-nez p1, :cond_0

    goto/16 :goto_2

    .line 147
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    .line 148
    iget-object v1, p0, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->database:Lcom/metamoji/sqldb/SqlDatabaseImpl;

    iget-wide v1, v1, Lcom/metamoji/sqldb/SqlDatabaseImpl;->sqlite3:J

    iget-wide v3, p0, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->sqlite3_stmt:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->bindParameterIndex_(JJLjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 153
    :cond_1
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    .line 156
    iget-object v2, p0, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->database:Lcom/metamoji/sqldb/SqlDatabaseImpl;

    iget-wide v2, v2, Lcom/metamoji/sqldb/SqlDatabaseImpl;->sqlite3:J

    move v5, v1

    move-wide v1, v2

    iget-wide v3, p0, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->sqlite3_stmt:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->bindNull_(JJI)V

    goto :goto_0

    :cond_2
    move v5, v1

    .line 157
    instance-of v1, v2, [B

    if-eqz v1, :cond_3

    .line 159
    move-object v6, v2

    check-cast v6, [B

    .line 160
    iget-object v1, p0, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->database:Lcom/metamoji/sqldb/SqlDatabaseImpl;

    iget-wide v1, v1, Lcom/metamoji/sqldb/SqlDatabaseImpl;->sqlite3:J

    iget-wide v3, p0, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->sqlite3_stmt:J

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->bindBlob_(JJI[B)V

    goto :goto_0

    .line 161
    :cond_3
    instance-of v1, v2, Ljava/util/Date;

    if-eqz v1, :cond_4

    .line 163
    check-cast v2, Ljava/util/Date;

    .line 164
    iget-object v1, p0, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->database:Lcom/metamoji/sqldb/SqlDatabaseImpl;

    iget-wide v3, v1, Lcom/metamoji/sqldb/SqlDatabaseImpl;->sqlite3:J

    move-object v6, v2

    move-wide v1, v3

    iget-wide v3, p0, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->sqlite3_stmt:J

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    long-to-double v6, v6

    const-wide v9, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v9

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->bindDouble_(JJID)V

    goto :goto_0

    .line 165
    :cond_4
    instance-of v1, v2, Ljava/lang/Character;

    if-eqz v1, :cond_5

    .line 166
    check-cast v2, Ljava/lang/Character;

    .line 167
    iget-object v1, p0, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->database:Lcom/metamoji/sqldb/SqlDatabaseImpl;

    iget-wide v3, v1, Lcom/metamoji/sqldb/SqlDatabaseImpl;->sqlite3:J

    move-object v6, v2

    move-wide v1, v3

    iget-wide v3, p0, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->sqlite3_stmt:J

    invoke-virtual {v6}, Ljava/lang/Character;->charValue()C

    move-result v6

    int-to-long v6, v6

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->bindLong_(JJIJ)V

    goto :goto_0

    .line 168
    :cond_5
    instance-of v1, v2, Ljava/lang/Boolean;

    if-eqz v1, :cond_7

    .line 169
    check-cast v2, Ljava/lang/Boolean;

    .line 170
    iget-object v1, p0, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->database:Lcom/metamoji/sqldb/SqlDatabaseImpl;

    iget-wide v3, v1, Lcom/metamoji/sqldb/SqlDatabaseImpl;->sqlite3:J

    move-object v6, v2

    move-wide v1, v3

    iget-wide v3, p0, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->sqlite3_stmt:J

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_6

    const-wide/16 v6, 0x1

    goto :goto_1

    :cond_6
    const-wide/16 v6, 0x0

    :goto_1
    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->bindLong_(JJIJ)V

    goto/16 :goto_0

    .line 171
    :cond_7
    instance-of v1, v2, Ljava/lang/Float;

    if-eqz v1, :cond_8

    .line 172
    check-cast v2, Ljava/lang/Float;

    .line 173
    iget-object v1, p0, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->database:Lcom/metamoji/sqldb/SqlDatabaseImpl;

    iget-wide v3, v1, Lcom/metamoji/sqldb/SqlDatabaseImpl;->sqlite3:J

    move-object v6, v2

    move-wide v1, v3

    iget-wide v3, p0, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->sqlite3_stmt:J

    invoke-virtual {v6}, Ljava/lang/Float;->doubleValue()D

    move-result-wide v6

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->bindDouble_(JJID)V

    goto/16 :goto_0

    .line 174
    :cond_8
    instance-of v1, v2, Ljava/lang/Double;

    if-eqz v1, :cond_9

    .line 175
    check-cast v2, Ljava/lang/Double;

    .line 176
    iget-object v1, p0, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->database:Lcom/metamoji/sqldb/SqlDatabaseImpl;

    iget-wide v3, v1, Lcom/metamoji/sqldb/SqlDatabaseImpl;->sqlite3:J

    move-object v6, v2

    move-wide v1, v3

    iget-wide v3, p0, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->sqlite3_stmt:J

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->bindDouble_(JJID)V

    goto/16 :goto_0

    .line 177
    :cond_9
    instance-of v1, v2, Ljava/lang/Number;

    if-eqz v1, :cond_a

    .line 178
    check-cast v2, Ljava/lang/Number;

    .line 179
    iget-object v1, p0, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->database:Lcom/metamoji/sqldb/SqlDatabaseImpl;

    iget-wide v3, v1, Lcom/metamoji/sqldb/SqlDatabaseImpl;->sqlite3:J

    move-object v6, v2

    move-wide v1, v3

    iget-wide v3, p0, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->sqlite3_stmt:J

    invoke-virtual {v6}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->bindLong_(JJIJ)V

    goto/16 :goto_0

    .line 181
    :cond_a
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 185
    iget-object v1, p0, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->database:Lcom/metamoji/sqldb/SqlDatabaseImpl;

    if-nez v6, :cond_b

    .line 183
    iget-wide v1, v1, Lcom/metamoji/sqldb/SqlDatabaseImpl;->sqlite3:J

    iget-wide v3, p0, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->sqlite3_stmt:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->bindNull_(JJI)V

    goto/16 :goto_0

    .line 185
    :cond_b
    iget-wide v1, v1, Lcom/metamoji/sqldb/SqlDatabaseImpl;->sqlite3:J

    iget-wide v3, p0, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->sqlite3_stmt:J

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->bindString_(JJILjava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    :goto_2
    return-void
.end method

.method varargs bindParameters([Ljava/lang/Object;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/sqldb/SqlDatabaseException;
        }
    .end annotation

    if-eqz p1, :cond_a

    .line 104
    array-length v0, p1

    const/4 v1, 0x1

    move v7, v1

    :goto_0
    if-gt v7, v0, :cond_a

    add-int/lit8 v1, v7, -0x1

    .line 105
    aget-object v1, p1, v1

    if-nez v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->database:Lcom/metamoji/sqldb/SqlDatabaseImpl;

    iget-wide v3, v1, Lcom/metamoji/sqldb/SqlDatabaseImpl;->sqlite3:J

    iget-wide v5, p0, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->sqlite3_stmt:J

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->bindNull_(JJI)V

    goto/16 :goto_2

    :cond_0
    move-object v2, p0

    .line 109
    instance-of v3, v1, [B

    if-eqz v3, :cond_1

    .line 111
    move-object v8, v1

    check-cast v8, [B

    .line 112
    iget-object v1, v2, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->database:Lcom/metamoji/sqldb/SqlDatabaseImpl;

    iget-wide v3, v1, Lcom/metamoji/sqldb/SqlDatabaseImpl;->sqlite3:J

    iget-wide v5, v2, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->sqlite3_stmt:J

    invoke-direct/range {v2 .. v8}, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->bindBlob_(JJI[B)V

    goto/16 :goto_2

    .line 113
    :cond_1
    instance-of v3, v1, Ljava/util/Date;

    if-eqz v3, :cond_2

    .line 115
    check-cast v1, Ljava/util/Date;

    .line 116
    iget-object v3, v2, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->database:Lcom/metamoji/sqldb/SqlDatabaseImpl;

    iget-wide v3, v3, Lcom/metamoji/sqldb/SqlDatabaseImpl;->sqlite3:J

    iget-wide v5, v2, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->sqlite3_stmt:J

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    long-to-double v8, v8

    const-wide v10, 0x408f400000000000L    # 1000.0

    div-double/2addr v8, v10

    invoke-direct/range {v2 .. v9}, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->bindDouble_(JJID)V

    goto/16 :goto_2

    .line 117
    :cond_2
    instance-of v3, v1, Ljava/lang/Character;

    if-eqz v3, :cond_3

    .line 118
    check-cast v1, Ljava/lang/Character;

    .line 119
    iget-object v3, v2, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->database:Lcom/metamoji/sqldb/SqlDatabaseImpl;

    iget-wide v3, v3, Lcom/metamoji/sqldb/SqlDatabaseImpl;->sqlite3:J

    iget-wide v5, v2, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->sqlite3_stmt:J

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    int-to-long v8, v1

    invoke-direct/range {v2 .. v9}, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->bindLong_(JJIJ)V

    goto/16 :goto_2

    .line 120
    :cond_3
    instance-of v3, v1, Ljava/lang/Boolean;

    if-eqz v3, :cond_5

    .line 121
    check-cast v1, Ljava/lang/Boolean;

    .line 122
    iget-object v3, v2, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->database:Lcom/metamoji/sqldb/SqlDatabaseImpl;

    iget-wide v3, v3, Lcom/metamoji/sqldb/SqlDatabaseImpl;->sqlite3:J

    iget-wide v5, v2, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->sqlite3_stmt:J

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    const-wide/16 v8, 0x1

    goto :goto_1

    :cond_4
    const-wide/16 v8, 0x0

    :goto_1
    invoke-direct/range {v2 .. v9}, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->bindLong_(JJIJ)V

    goto :goto_2

    .line 123
    :cond_5
    instance-of v3, v1, Ljava/lang/Float;

    if-eqz v3, :cond_6

    .line 124
    check-cast v1, Ljava/lang/Float;

    .line 125
    iget-object v3, v2, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->database:Lcom/metamoji/sqldb/SqlDatabaseImpl;

    iget-wide v3, v3, Lcom/metamoji/sqldb/SqlDatabaseImpl;->sqlite3:J

    iget-wide v5, v2, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->sqlite3_stmt:J

    invoke-virtual {v1}, Ljava/lang/Float;->doubleValue()D

    move-result-wide v8

    invoke-direct/range {v2 .. v9}, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->bindDouble_(JJID)V

    goto :goto_2

    .line 126
    :cond_6
    instance-of v3, v1, Ljava/lang/Double;

    if-eqz v3, :cond_7

    .line 127
    check-cast v1, Ljava/lang/Double;

    .line 128
    iget-object v3, v2, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->database:Lcom/metamoji/sqldb/SqlDatabaseImpl;

    iget-wide v3, v3, Lcom/metamoji/sqldb/SqlDatabaseImpl;->sqlite3:J

    iget-wide v5, v2, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->sqlite3_stmt:J

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-direct/range {v2 .. v9}, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->bindDouble_(JJID)V

    goto :goto_2

    .line 129
    :cond_7
    instance-of v3, v1, Ljava/lang/Number;

    if-eqz v3, :cond_8

    .line 130
    check-cast v1, Ljava/lang/Number;

    .line 131
    iget-object v3, v2, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->database:Lcom/metamoji/sqldb/SqlDatabaseImpl;

    iget-wide v3, v3, Lcom/metamoji/sqldb/SqlDatabaseImpl;->sqlite3:J

    iget-wide v5, v2, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->sqlite3_stmt:J

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    invoke-direct/range {v2 .. v9}, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->bindLong_(JJIJ)V

    goto :goto_2

    .line 133
    :cond_8
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 137
    iget-object v1, v2, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->database:Lcom/metamoji/sqldb/SqlDatabaseImpl;

    if-nez v8, :cond_9

    .line 135
    iget-wide v3, v1, Lcom/metamoji/sqldb/SqlDatabaseImpl;->sqlite3:J

    iget-wide v5, v2, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->sqlite3_stmt:J

    invoke-direct/range {v2 .. v7}, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->bindNull_(JJI)V

    goto :goto_2

    .line 137
    :cond_9
    iget-wide v3, v1, Lcom/metamoji/sqldb/SqlDatabaseImpl;->sqlite3:J

    iget-wide v5, v2, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->sqlite3_stmt:J

    invoke-direct/range {v2 .. v8}, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->bindString_(JJILjava/lang/String;)V

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method public close()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/sqldb/SqlDatabaseException;
        }
    .end annotation

    .line 37
    iget-wide v0, p0, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->sqlite3_stmt:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->database:Lcom/metamoji/sqldb/SqlDatabaseImpl;

    iget-wide v0, v0, Lcom/metamoji/sqldb/SqlDatabaseImpl;->sqlite3:J

    iget-wide v4, p0, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->sqlite3_stmt:J

    invoke-direct {p0, v0, v1, v4, v5}, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->close_(JJ)V

    .line 39
    iput-wide v2, p0, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->sqlite3_stmt:J

    :cond_0
    return-void
.end method

.method public executeQuery(Lcom/metamoji/sqldb/SqlConsumer;Ljava/util/Map;)Lcom/metamoji/sqldb/SqlResultSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/sqldb/SqlConsumer<",
            "Lcom/metamoji/sqldb/SqlPreparedStatement;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/metamoji/sqldb/SqlResultSet;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/sqldb/SqlDatabaseException;
        }
    .end annotation

    .line 66
    invoke-virtual {p0, p2}, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->bindNamedParameter(Ljava/util/Map;)V

    .line 67
    invoke-static {}, Lcom/metamoji/sqldb/SqlFactory;->instance()Lcom/metamoji/sqldb/SqlFactory;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Lcom/metamoji/sqldb/SqlFactory;->createResultSet(Lcom/metamoji/sqldb/SqlPreparedStatementImpl;Lcom/metamoji/sqldb/SqlConsumer;)Lcom/metamoji/sqldb/SqlResultSet;

    move-result-object p1

    return-object p1
.end method

.method public varargs executeQuery(Lcom/metamoji/sqldb/SqlConsumer;[Ljava/lang/Object;)Lcom/metamoji/sqldb/SqlResultSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/sqldb/SqlConsumer<",
            "Lcom/metamoji/sqldb/SqlPreparedStatement;",
            ">;[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/metamoji/sqldb/SqlResultSet;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/sqldb/SqlDatabaseException;
        }
    .end annotation

    .line 60
    invoke-virtual {p0, p2}, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->bindParameters([Ljava/lang/Object;)V

    .line 61
    invoke-static {}, Lcom/metamoji/sqldb/SqlFactory;->instance()Lcom/metamoji/sqldb/SqlFactory;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Lcom/metamoji/sqldb/SqlFactory;->createResultSet(Lcom/metamoji/sqldb/SqlPreparedStatementImpl;Lcom/metamoji/sqldb/SqlConsumer;)Lcom/metamoji/sqldb/SqlResultSet;

    move-result-object p1

    return-object p1
.end method

.method public varargs executeQuery([Ljava/lang/Object;)Lcom/metamoji/sqldb/SqlResultSet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/sqldb/SqlDatabaseException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 55
    invoke-virtual {p0, v0, p1}, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->executeQuery(Lcom/metamoji/sqldb/SqlConsumer;[Ljava/lang/Object;)Lcom/metamoji/sqldb/SqlResultSet;

    move-result-object p1

    return-object p1
.end method

.method public varargs executeUpdate(Z[Ljava/lang/Object;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/sqldb/SqlDatabaseException;
        }
    .end annotation

    .line 80
    invoke-virtual {p0, p2}, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->bindParameters([Ljava/lang/Object;)V

    .line 81
    iget-object p2, p0, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->context:Lcom/metamoji/sqldb/SqlThreadContext;

    invoke-virtual {p2}, Lcom/metamoji/sqldb/SqlThreadContext;->isBegunTransaction()Z

    move-result p2

    if-nez p2, :cond_0

    .line 82
    iget-object p2, p0, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->database:Lcom/metamoji/sqldb/SqlDatabaseImpl;

    invoke-virtual {p2}, Lcom/metamoji/sqldb/SqlDatabaseImpl;->begin()V

    .line 86
    :cond_0
    :try_start_0
    iget-object p2, p0, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->database:Lcom/metamoji/sqldb/SqlDatabaseImpl;

    iget-wide v0, p2, Lcom/metamoji/sqldb/SqlDatabaseImpl;->sqlite3:J

    iget-wide v2, p0, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->sqlite3_stmt:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->step_(JJ)V

    .line 87
    iget-object p2, p0, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->database:Lcom/metamoji/sqldb/SqlDatabaseImpl;

    iget-wide v0, p2, Lcom/metamoji/sqldb/SqlDatabaseImpl;->sqlite3:J

    invoke-direct {p0, v0, v1}, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->changes_(J)I

    move-result p2

    .line 88
    iget-object v0, p0, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->context:Lcom/metamoji/sqldb/SqlThreadContext;

    invoke-virtual {v0, p1}, Lcom/metamoji/sqldb/SqlThreadContext;->setBegunUpdate(Z)V

    .line 89
    iget-object p1, p0, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->database:Lcom/metamoji/sqldb/SqlDatabaseImpl;

    iget-wide v0, p1, Lcom/metamoji/sqldb/SqlDatabaseImpl;->sqlite3:J

    iget-wide v2, p0, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->sqlite3_stmt:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->reset_(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    iget-object p1, p0, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->context:Lcom/metamoji/sqldb/SqlThreadContext;

    invoke-virtual {p1}, Lcom/metamoji/sqldb/SqlThreadContext;->isAutoCommit()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 95
    iget-object p1, p0, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->database:Lcom/metamoji/sqldb/SqlDatabaseImpl;

    invoke-virtual {p1}, Lcom/metamoji/sqldb/SqlDatabaseImpl;->commit()V

    :cond_1
    return p2

    :catchall_0
    move-exception p1

    .line 93
    iget-object p2, p0, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->context:Lcom/metamoji/sqldb/SqlThreadContext;

    invoke-virtual {p2}, Lcom/metamoji/sqldb/SqlThreadContext;->isAutoCommit()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 97
    iget-object p2, p0, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->database:Lcom/metamoji/sqldb/SqlDatabaseImpl;

    invoke-virtual {p2}, Lcom/metamoji/sqldb/SqlDatabaseImpl;->rollback()V

    .line 100
    :cond_2
    throw p1
.end method

.method public varargs executeUpdate([Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/sqldb/SqlDatabaseException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 75
    invoke-virtual {p0, v0, p1}, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->executeUpdate(Z[Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public executeUpdateForTransaction()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/sqldb/SqlDatabaseException;
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->database:Lcom/metamoji/sqldb/SqlDatabaseImpl;

    iget-wide v0, v0, Lcom/metamoji/sqldb/SqlDatabaseImpl;->sqlite3:J

    iget-wide v2, p0, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->sqlite3_stmt:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->step_(JJ)V

    .line 194
    iget-object v0, p0, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->database:Lcom/metamoji/sqldb/SqlDatabaseImpl;

    iget-wide v0, v0, Lcom/metamoji/sqldb/SqlDatabaseImpl;->sqlite3:J

    invoke-direct {p0, v0, v1}, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->changes_(J)I

    move-result v0

    .line 195
    iget-object v1, p0, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->database:Lcom/metamoji/sqldb/SqlDatabaseImpl;

    iget-wide v1, v1, Lcom/metamoji/sqldb/SqlDatabaseImpl;->sqlite3:J

    iget-wide v3, p0, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->sqlite3_stmt:J

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->reset_(JJ)V

    return v0
.end method

.method public reset()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/sqldb/SqlDatabaseException;
        }
    .end annotation

    .line 45
    iget-wide v0, p0, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->sqlite3_stmt:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->database:Lcom/metamoji/sqldb/SqlDatabaseImpl;

    iget-wide v0, v0, Lcom/metamoji/sqldb/SqlDatabaseImpl;->sqlite3:J

    iget-wide v2, p0, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->sqlite3_stmt:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->reset_(JJ)V

    :cond_0
    return-void
.end method
