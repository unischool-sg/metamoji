.class Lcom/j256/ormlite/dao/BaseDaoImpl$DaoConfigArray;
.super Ljava/lang/Object;
.source "BaseDaoImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/j256/ormlite/dao/BaseDaoImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DaoConfigArray"
.end annotation


# instance fields
.field private daoArray:[Lcom/j256/ormlite/dao/BaseDaoImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/j256/ormlite/dao/BaseDaoImpl<",
            "**>;"
        }
    .end annotation
.end field

.field private daoArrayC:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 983
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 984
    new-array v0, v0, [Lcom/j256/ormlite/dao/BaseDaoImpl;

    iput-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl$DaoConfigArray;->daoArray:[Lcom/j256/ormlite/dao/BaseDaoImpl;

    const/4 v0, 0x0

    .line 985
    iput v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl$DaoConfigArray;->daoArrayC:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/j256/ormlite/dao/BaseDaoImpl$1;)V
    .locals 0

    .line 983
    invoke-direct {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl$DaoConfigArray;-><init>()V

    return-void
.end method


# virtual methods
.method public addDao(Lcom/j256/ormlite/dao/BaseDaoImpl;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/dao/BaseDaoImpl<",
            "**>;)V"
        }
    .end annotation

    .line 988
    iget v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl$DaoConfigArray;->daoArrayC:I

    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl$DaoConfigArray;->daoArray:[Lcom/j256/ormlite/dao/BaseDaoImpl;

    array-length v2, v1

    if-ne v0, v2, :cond_1

    .line 989
    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Lcom/j256/ormlite/dao/BaseDaoImpl;

    const/4 v1, 0x0

    .line 991
    :goto_0
    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl$DaoConfigArray;->daoArray:[Lcom/j256/ormlite/dao/BaseDaoImpl;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 992
    aget-object v3, v2, v1

    aput-object v3, v0, v1

    const/4 v3, 0x0

    .line 993
    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 995
    :cond_0
    iput-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl$DaoConfigArray;->daoArray:[Lcom/j256/ormlite/dao/BaseDaoImpl;

    .line 997
    :cond_1
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl$DaoConfigArray;->daoArray:[Lcom/j256/ormlite/dao/BaseDaoImpl;

    iget v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl$DaoConfigArray;->daoArrayC:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl$DaoConfigArray;->daoArrayC:I

    aput-object p1, v0, v1

    return-void
.end method

.method public clear()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 1007
    :goto_0
    iget v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl$DaoConfigArray;->daoArrayC:I

    if-ge v1, v2, :cond_0

    .line 1008
    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl$DaoConfigArray;->daoArray:[Lcom/j256/ormlite/dao/BaseDaoImpl;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1010
    :cond_0
    iput v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl$DaoConfigArray;->daoArrayC:I

    return-void
.end method

.method public get(I)Lcom/j256/ormlite/dao/BaseDaoImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/j256/ormlite/dao/BaseDaoImpl<",
            "**>;"
        }
    .end annotation

    .line 1003
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl$DaoConfigArray;->daoArray:[Lcom/j256/ormlite/dao/BaseDaoImpl;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 1000
    iget v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl$DaoConfigArray;->daoArrayC:I

    return v0
.end method
