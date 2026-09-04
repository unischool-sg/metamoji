.class public Lcom/metamoji/sqldb/SqlDatabaseException;
.super Ljava/lang/Exception;
.source "SqlDatabaseException.java"


# static fields
.field private static final serialVersionUID:J = 0x34be89437777893fL


# instance fields
.field private errorCode:I

.field private fileName:Ljava/lang/String;

.field private lineNumber:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 27
    invoke-virtual {p0}, Lcom/metamoji/sqldb/SqlDatabaseException;->fillInFileNameAndLineNumber()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/metamoji/sqldb/SqlDatabaseException;->fillInFileNameAndLineNumber()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JILjava/lang/String;)V
    .locals 0

    .line 71
    invoke-direct {p0, p5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 72
    iput-object p1, p0, Lcom/metamoji/sqldb/SqlDatabaseException;->fileName:Ljava/lang/String;

    .line 73
    iput-wide p2, p0, Lcom/metamoji/sqldb/SqlDatabaseException;->lineNumber:J

    .line 74
    iput p4, p0, Lcom/metamoji/sqldb/SqlDatabaseException;->errorCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    invoke-virtual {p0}, Lcom/metamoji/sqldb/SqlDatabaseException;->fillInFileNameAndLineNumber()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 58
    invoke-virtual {p0}, Lcom/metamoji/sqldb/SqlDatabaseException;->fillInFileNameAndLineNumber()V

    return-void
.end method


# virtual methods
.method fillInFileNameAndLineNumber()V
    .locals 3

    .line 105
    invoke-virtual {p0}, Lcom/metamoji/sqldb/SqlDatabaseException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 106
    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 107
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/metamoji/sqldb/SqlDatabaseException;->fileName:Ljava/lang/String;

    .line 108
    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/metamoji/sqldb/SqlDatabaseException;->lineNumber:J

    :cond_0
    return-void
.end method

.method public getErrorCode()I
    .locals 1

    .line 101
    iget v0, p0, Lcom/metamoji/sqldb/SqlDatabaseException;->errorCode:I

    return v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/metamoji/sqldb/SqlDatabaseException;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getLineNumber()J
    .locals 2

    .line 92
    iget-wide v0, p0, Lcom/metamoji/sqldb/SqlDatabaseException;->lineNumber:J

    return-wide v0
.end method
