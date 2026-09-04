.class Lcom/metamoji/sqldb/SqlColumnInfoImpl;
.super Ljava/lang/Object;
.source "SqlColumnInfoImpl.java"

# interfaces
.implements Lcom/metamoji/sqldb/SqlColumnInfo;


# instance fields
.field private columnType:Lcom/metamoji/sqldb/SqlColumnType;

.field private name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/metamoji/sqldb/SqlColumnType;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/metamoji/sqldb/SqlColumnInfoImpl;->name:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/metamoji/sqldb/SqlColumnInfoImpl;->columnType:Lcom/metamoji/sqldb/SqlColumnType;

    return-void
.end method


# virtual methods
.method public name()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/metamoji/sqldb/SqlColumnInfoImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public type()Lcom/metamoji/sqldb/SqlColumnType;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/metamoji/sqldb/SqlColumnInfoImpl;->columnType:Lcom/metamoji/sqldb/SqlColumnType;

    return-object v0
.end method
