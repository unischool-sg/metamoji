.class public final enum Lcom/metamoji/sqldb/SqlColumnType;
.super Ljava/lang/Enum;
.source "SqlColumnType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/sqldb/SqlColumnType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/sqldb/SqlColumnType;

.field public static final enum SQL_COLUMN_TYPE_ANY:Lcom/metamoji/sqldb/SqlColumnType;

.field public static final enum SQL_COLUMN_TYPE_BLOB:Lcom/metamoji/sqldb/SqlColumnType;

.field public static final enum SQL_COLUMN_TYPE_INTEGER:Lcom/metamoji/sqldb/SqlColumnType;

.field public static final enum SQL_COLUMN_TYPE_NULL:Lcom/metamoji/sqldb/SqlColumnType;

.field public static final enum SQL_COLUMN_TYPE_REAL:Lcom/metamoji/sqldb/SqlColumnType;

.field public static final enum SQL_COLUMN_TYPE_TEXT:Lcom/metamoji/sqldb/SqlColumnType;

.field private static final TYPE_MAP:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/metamoji/sqldb/SqlColumnType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/metamoji/sqldb/SqlColumnType;
    .locals 6

    .line 18
    sget-object v0, Lcom/metamoji/sqldb/SqlColumnType;->SQL_COLUMN_TYPE_NULL:Lcom/metamoji/sqldb/SqlColumnType;

    sget-object v1, Lcom/metamoji/sqldb/SqlColumnType;->SQL_COLUMN_TYPE_INTEGER:Lcom/metamoji/sqldb/SqlColumnType;

    sget-object v2, Lcom/metamoji/sqldb/SqlColumnType;->SQL_COLUMN_TYPE_REAL:Lcom/metamoji/sqldb/SqlColumnType;

    sget-object v3, Lcom/metamoji/sqldb/SqlColumnType;->SQL_COLUMN_TYPE_TEXT:Lcom/metamoji/sqldb/SqlColumnType;

    sget-object v4, Lcom/metamoji/sqldb/SqlColumnType;->SQL_COLUMN_TYPE_BLOB:Lcom/metamoji/sqldb/SqlColumnType;

    sget-object v5, Lcom/metamoji/sqldb/SqlColumnType;->SQL_COLUMN_TYPE_ANY:Lcom/metamoji/sqldb/SqlColumnType;

    filled-new-array/range {v0 .. v5}, [Lcom/metamoji/sqldb/SqlColumnType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 20
    new-instance v0, Lcom/metamoji/sqldb/SqlColumnType;

    const-string v1, "SQL_COLUMN_TYPE_NULL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/sqldb/SqlColumnType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/sqldb/SqlColumnType;->SQL_COLUMN_TYPE_NULL:Lcom/metamoji/sqldb/SqlColumnType;

    .line 21
    new-instance v0, Lcom/metamoji/sqldb/SqlColumnType;

    const-string v1, "SQL_COLUMN_TYPE_INTEGER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/sqldb/SqlColumnType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/sqldb/SqlColumnType;->SQL_COLUMN_TYPE_INTEGER:Lcom/metamoji/sqldb/SqlColumnType;

    .line 22
    new-instance v0, Lcom/metamoji/sqldb/SqlColumnType;

    const-string v1, "SQL_COLUMN_TYPE_REAL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/sqldb/SqlColumnType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/sqldb/SqlColumnType;->SQL_COLUMN_TYPE_REAL:Lcom/metamoji/sqldb/SqlColumnType;

    .line 23
    new-instance v0, Lcom/metamoji/sqldb/SqlColumnType;

    const-string v1, "SQL_COLUMN_TYPE_TEXT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/sqldb/SqlColumnType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/sqldb/SqlColumnType;->SQL_COLUMN_TYPE_TEXT:Lcom/metamoji/sqldb/SqlColumnType;

    .line 24
    new-instance v0, Lcom/metamoji/sqldb/SqlColumnType;

    const-string v1, "SQL_COLUMN_TYPE_BLOB"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/sqldb/SqlColumnType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/sqldb/SqlColumnType;->SQL_COLUMN_TYPE_BLOB:Lcom/metamoji/sqldb/SqlColumnType;

    .line 25
    new-instance v0, Lcom/metamoji/sqldb/SqlColumnType;

    const-string v1, "SQL_COLUMN_TYPE_ANY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/sqldb/SqlColumnType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/sqldb/SqlColumnType;->SQL_COLUMN_TYPE_ANY:Lcom/metamoji/sqldb/SqlColumnType;

    .line 18
    invoke-static {}, Lcom/metamoji/sqldb/SqlColumnType;->$values()[Lcom/metamoji/sqldb/SqlColumnType;

    move-result-object v0

    sput-object v0, Lcom/metamoji/sqldb/SqlColumnType;->$VALUES:[Lcom/metamoji/sqldb/SqlColumnType;

    .line 27
    new-instance v0, Lcom/metamoji/sqldb/SqlColumnType$1;

    invoke-direct {v0}, Lcom/metamoji/sqldb/SqlColumnType$1;-><init>()V

    sput-object v0, Lcom/metamoji/sqldb/SqlColumnType;->TYPE_MAP:Landroid/util/SparseArray;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    iput p3, p0, Lcom/metamoji/sqldb/SqlColumnType;->value:I

    return-void
.end method

.method public static enumOf(I)Lcom/metamoji/sqldb/SqlColumnType;
    .locals 3

    .line 44
    sget-object v0, Lcom/metamoji/sqldb/SqlColumnType;->TYPE_MAP:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/sqldb/SqlColumnType;

    if-eqz v0, :cond_0

    return-object v0

    .line 46
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "invalid enum value: %d"

    invoke-static {v1, v2, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/sqldb/SqlColumnType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 18
    const-class v0, Lcom/metamoji/sqldb/SqlColumnType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/sqldb/SqlColumnType;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/sqldb/SqlColumnType;
    .locals 1

    .line 18
    sget-object v0, Lcom/metamoji/sqldb/SqlColumnType;->$VALUES:[Lcom/metamoji/sqldb/SqlColumnType;

    invoke-virtual {v0}, [Lcom/metamoji/sqldb/SqlColumnType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/sqldb/SqlColumnType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/metamoji/sqldb/SqlColumnType;->value:I

    return v0
.end method
