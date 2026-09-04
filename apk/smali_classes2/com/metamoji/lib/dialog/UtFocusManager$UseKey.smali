.class public final enum Lcom/metamoji/lib/dialog/UtFocusManager$UseKey;
.super Ljava/lang/Enum;
.source "UtFocusManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/lib/dialog/UtFocusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UseKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/lib/dialog/UtFocusManager$UseKey;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000b\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0019\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0008j\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/metamoji/lib/dialog/UtFocusManager$UseKey;",
        "",
        "ud",
        "",
        "lr",
        "<init>",
        "(Ljava/lang/String;IZZ)V",
        "getUd",
        "()Z",
        "getLr",
        "None",
        "UpDown",
        "LeftRight",
        "All",
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

.field private static final synthetic $VALUES:[Lcom/metamoji/lib/dialog/UtFocusManager$UseKey;

.field public static final enum All:Lcom/metamoji/lib/dialog/UtFocusManager$UseKey;

.field public static final enum LeftRight:Lcom/metamoji/lib/dialog/UtFocusManager$UseKey;

.field public static final enum None:Lcom/metamoji/lib/dialog/UtFocusManager$UseKey;

.field public static final enum UpDown:Lcom/metamoji/lib/dialog/UtFocusManager$UseKey;


# instance fields
.field private final lr:Z

.field private final ud:Z


# direct methods
.method private static final synthetic $values()[Lcom/metamoji/lib/dialog/UtFocusManager$UseKey;
    .locals 4

    sget-object v0, Lcom/metamoji/lib/dialog/UtFocusManager$UseKey;->None:Lcom/metamoji/lib/dialog/UtFocusManager$UseKey;

    sget-object v1, Lcom/metamoji/lib/dialog/UtFocusManager$UseKey;->UpDown:Lcom/metamoji/lib/dialog/UtFocusManager$UseKey;

    sget-object v2, Lcom/metamoji/lib/dialog/UtFocusManager$UseKey;->LeftRight:Lcom/metamoji/lib/dialog/UtFocusManager$UseKey;

    sget-object v3, Lcom/metamoji/lib/dialog/UtFocusManager$UseKey;->All:Lcom/metamoji/lib/dialog/UtFocusManager$UseKey;

    filled-new-array {v0, v1, v2, v3}, [Lcom/metamoji/lib/dialog/UtFocusManager$UseKey;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 33
    new-instance v0, Lcom/metamoji/lib/dialog/UtFocusManager$UseKey;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/metamoji/lib/dialog/UtFocusManager$UseKey;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/metamoji/lib/dialog/UtFocusManager$UseKey;->None:Lcom/metamoji/lib/dialog/UtFocusManager$UseKey;

    .line 34
    new-instance v0, Lcom/metamoji/lib/dialog/UtFocusManager$UseKey;

    const-string v1, "UpDown"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/metamoji/lib/dialog/UtFocusManager$UseKey;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/metamoji/lib/dialog/UtFocusManager$UseKey;->UpDown:Lcom/metamoji/lib/dialog/UtFocusManager$UseKey;

    .line 35
    new-instance v0, Lcom/metamoji/lib/dialog/UtFocusManager$UseKey;

    const-string v1, "LeftRight"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/metamoji/lib/dialog/UtFocusManager$UseKey;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/metamoji/lib/dialog/UtFocusManager$UseKey;->LeftRight:Lcom/metamoji/lib/dialog/UtFocusManager$UseKey;

    .line 36
    new-instance v0, Lcom/metamoji/lib/dialog/UtFocusManager$UseKey;

    const-string v1, "All"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/metamoji/lib/dialog/UtFocusManager$UseKey;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/metamoji/lib/dialog/UtFocusManager$UseKey;->All:Lcom/metamoji/lib/dialog/UtFocusManager$UseKey;

    invoke-static {}, Lcom/metamoji/lib/dialog/UtFocusManager$UseKey;->$values()[Lcom/metamoji/lib/dialog/UtFocusManager$UseKey;

    move-result-object v0

    sput-object v0, Lcom/metamoji/lib/dialog/UtFocusManager$UseKey;->$VALUES:[Lcom/metamoji/lib/dialog/UtFocusManager$UseKey;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/metamoji/lib/dialog/UtFocusManager$UseKey;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lcom/metamoji/lib/dialog/UtFocusManager$UseKey;->ud:Z

    iput-boolean p4, p0, Lcom/metamoji/lib/dialog/UtFocusManager$UseKey;->lr:Z

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/metamoji/lib/dialog/UtFocusManager$UseKey;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/metamoji/lib/dialog/UtFocusManager$UseKey;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/lib/dialog/UtFocusManager$UseKey;
    .locals 1

    const-class v0, Lcom/metamoji/lib/dialog/UtFocusManager$UseKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/lib/dialog/UtFocusManager$UseKey;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/lib/dialog/UtFocusManager$UseKey;
    .locals 1

    sget-object v0, Lcom/metamoji/lib/dialog/UtFocusManager$UseKey;->$VALUES:[Lcom/metamoji/lib/dialog/UtFocusManager$UseKey;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/lib/dialog/UtFocusManager$UseKey;

    return-object v0
.end method


# virtual methods
.method public final getLr()Z
    .locals 1

    .line 32
    iget-boolean v0, p0, Lcom/metamoji/lib/dialog/UtFocusManager$UseKey;->lr:Z

    return v0
.end method

.method public final getUd()Z
    .locals 1

    .line 32
    iget-boolean v0, p0, Lcom/metamoji/lib/dialog/UtFocusManager$UseKey;->ud:Z

    return v0
.end method
