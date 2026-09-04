.class public final enum Lcom/metamoji/lib/dialog/UtDialog$WidthOption;
.super Ljava/lang/Enum;
.source "UtDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/lib/dialog/UtDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WidthOption"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/lib/dialog/UtDialog$WidthOption;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\n\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0019\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0004\u0010\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/metamoji/lib/dialog/UtDialog$WidthOption;",
        "",
        "param",
        "",
        "isDynamicSizing",
        "",
        "<init>",
        "(Ljava/lang/String;IIZ)V",
        "getParam",
        "()I",
        "()Z",
        "COMPACT",
        "FULL",
        "FIXED",
        "LIMIT",
        "dialog"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/metamoji/lib/dialog/UtDialog$WidthOption;

.field public static final enum COMPACT:Lcom/metamoji/lib/dialog/UtDialog$WidthOption;

.field public static final enum FIXED:Lcom/metamoji/lib/dialog/UtDialog$WidthOption;

.field public static final enum FULL:Lcom/metamoji/lib/dialog/UtDialog$WidthOption;

.field public static final enum LIMIT:Lcom/metamoji/lib/dialog/UtDialog$WidthOption;


# instance fields
.field private final isDynamicSizing:Z

.field private final param:I


# direct methods
.method private static final synthetic $values()[Lcom/metamoji/lib/dialog/UtDialog$WidthOption;
    .locals 4

    sget-object v0, Lcom/metamoji/lib/dialog/UtDialog$WidthOption;->COMPACT:Lcom/metamoji/lib/dialog/UtDialog$WidthOption;

    sget-object v1, Lcom/metamoji/lib/dialog/UtDialog$WidthOption;->FULL:Lcom/metamoji/lib/dialog/UtDialog$WidthOption;

    sget-object v2, Lcom/metamoji/lib/dialog/UtDialog$WidthOption;->FIXED:Lcom/metamoji/lib/dialog/UtDialog$WidthOption;

    sget-object v3, Lcom/metamoji/lib/dialog/UtDialog$WidthOption;->LIMIT:Lcom/metamoji/lib/dialog/UtDialog$WidthOption;

    filled-new-array {v0, v1, v2, v3}, [Lcom/metamoji/lib/dialog/UtDialog$WidthOption;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 187
    new-instance v0, Lcom/metamoji/lib/dialog/UtDialog$WidthOption;

    const-string v1, "COMPACT"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-direct {v0, v1, v2, v3, v2}, Lcom/metamoji/lib/dialog/UtDialog$WidthOption;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/metamoji/lib/dialog/UtDialog$WidthOption;->COMPACT:Lcom/metamoji/lib/dialog/UtDialog$WidthOption;

    .line 188
    new-instance v0, Lcom/metamoji/lib/dialog/UtDialog$WidthOption;

    const/4 v1, -0x1

    const-string v4, "FULL"

    const/4 v5, 0x1

    invoke-direct {v0, v4, v5, v1, v2}, Lcom/metamoji/lib/dialog/UtDialog$WidthOption;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/metamoji/lib/dialog/UtDialog$WidthOption;->FULL:Lcom/metamoji/lib/dialog/UtDialog$WidthOption;

    .line 189
    new-instance v0, Lcom/metamoji/lib/dialog/UtDialog$WidthOption;

    const-string v1, "FIXED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v3, v2}, Lcom/metamoji/lib/dialog/UtDialog$WidthOption;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/metamoji/lib/dialog/UtDialog$WidthOption;->FIXED:Lcom/metamoji/lib/dialog/UtDialog$WidthOption;

    .line 190
    new-instance v0, Lcom/metamoji/lib/dialog/UtDialog$WidthOption;

    const-string v1, "LIMIT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/metamoji/lib/dialog/UtDialog$WidthOption;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/metamoji/lib/dialog/UtDialog$WidthOption;->LIMIT:Lcom/metamoji/lib/dialog/UtDialog$WidthOption;

    invoke-static {}, Lcom/metamoji/lib/dialog/UtDialog$WidthOption;->$values()[Lcom/metamoji/lib/dialog/UtDialog$WidthOption;

    move-result-object v0

    sput-object v0, Lcom/metamoji/lib/dialog/UtDialog$WidthOption;->$VALUES:[Lcom/metamoji/lib/dialog/UtDialog$WidthOption;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/metamoji/lib/dialog/UtDialog$WidthOption;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)V"
        }
    .end annotation

    .line 186
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/metamoji/lib/dialog/UtDialog$WidthOption;->param:I

    iput-boolean p4, p0, Lcom/metamoji/lib/dialog/UtDialog$WidthOption;->isDynamicSizing:Z

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/metamoji/lib/dialog/UtDialog$WidthOption;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/metamoji/lib/dialog/UtDialog$WidthOption;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/lib/dialog/UtDialog$WidthOption;
    .locals 1

    const-class v0, Lcom/metamoji/lib/dialog/UtDialog$WidthOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/lib/dialog/UtDialog$WidthOption;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/lib/dialog/UtDialog$WidthOption;
    .locals 1

    sget-object v0, Lcom/metamoji/lib/dialog/UtDialog$WidthOption;->$VALUES:[Lcom/metamoji/lib/dialog/UtDialog$WidthOption;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/lib/dialog/UtDialog$WidthOption;

    return-object v0
.end method


# virtual methods
.method public final getParam()I
    .locals 1

    .line 186
    iget v0, p0, Lcom/metamoji/lib/dialog/UtDialog$WidthOption;->param:I

    return v0
.end method

.method public final isDynamicSizing()Z
    .locals 1

    .line 186
    iget-boolean v0, p0, Lcom/metamoji/lib/dialog/UtDialog$WidthOption;->isDynamicSizing:Z

    return v0
.end method
