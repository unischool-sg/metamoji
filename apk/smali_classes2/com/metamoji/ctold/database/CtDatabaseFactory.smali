.class public Lcom/metamoji/ctold/database/CtDatabaseFactory;
.super Ljava/lang/Object;
.source "CtDatabaseFactory.java"


# static fields
.field private static final SINGLETON:Lcom/metamoji/ctold/database/CtDatabaseFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Lcom/metamoji/ctold/database/CtDatabaseFactory;

    invoke-direct {v0}, Lcom/metamoji/ctold/database/CtDatabaseFactory;-><init>()V

    sput-object v0, Lcom/metamoji/ctold/database/CtDatabaseFactory;->SINGLETON:Lcom/metamoji/ctold/database/CtDatabaseFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static instance()Lcom/metamoji/ctold/database/CtDatabaseFactory;
    .locals 1

    .line 25
    sget-object v0, Lcom/metamoji/ctold/database/CtDatabaseFactory;->SINGLETON:Lcom/metamoji/ctold/database/CtDatabaseFactory;

    return-object v0
.end method


# virtual methods
.method public createObjectDatabase(Lcom/metamoji/sqldb/SqlModel;Ljava/lang/String;)Lcom/metamoji/ctold/database/CtObjectDatabase;
    .locals 1

    .line 36
    new-instance v0, Lcom/metamoji/ctold/database/CtObjectDatabaseImpl;

    invoke-direct {v0, p1, p2}, Lcom/metamoji/ctold/database/CtObjectDatabaseImpl;-><init>(Lcom/metamoji/sqldb/SqlModel;Ljava/lang/String;)V

    return-object v0
.end method

.method public createTagDatabase(Lcom/metamoji/sqldb/SqlModel;Lcom/metamoji/ctold/database/CtObjectDatabase;)Lcom/metamoji/ctold/database/CtTagDatabase;
    .locals 1

    .line 47
    new-instance v0, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;

    invoke-direct {v0, p1, p2}, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;-><init>(Lcom/metamoji/sqldb/SqlModel;Lcom/metamoji/ctold/database/CtObjectDatabase;)V

    return-object v0
.end method
