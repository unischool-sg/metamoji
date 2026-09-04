.class public final enum Lcom/metamoji/lib/dialog/UtStandardString;
.super Ljava/lang/Enum;
.source "UtStandardString.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/lib/dialog/UtStandardString$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/lib/dialog/UtStandardString;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000b\n\u0002\u0010\u000e\n\u0002\u0008\u0007\u0008\u0086\u0081\u0002\u0018\u0000 \u00152\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0015B\u0013\u0008\u0002\u0012\u0008\u0008\u0001\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u000e\u001a\u00020\u000f8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0012\u001a\u00020\u00038G\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0014j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\r\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/metamoji/lib/dialog/UtStandardString;",
        "",
        "resId",
        "",
        "<init>",
        "(Ljava/lang/String;II)V",
        "OK",
        "CANCEL",
        "CLOSE",
        "DONE",
        "YES",
        "NO",
        "BACK",
        "NONE",
        "text",
        "",
        "getText",
        "()Ljava/lang/String;",
        "id",
        "getId",
        "()I",
        "Companion",
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

.field private static final synthetic $VALUES:[Lcom/metamoji/lib/dialog/UtStandardString;

.field public static final enum BACK:Lcom/metamoji/lib/dialog/UtStandardString;

.field public static final enum CANCEL:Lcom/metamoji/lib/dialog/UtStandardString;

.field public static final enum CLOSE:Lcom/metamoji/lib/dialog/UtStandardString;

.field public static final Companion:Lcom/metamoji/lib/dialog/UtStandardString$Companion;

.field public static final enum DONE:Lcom/metamoji/lib/dialog/UtStandardString;

.field public static final enum NO:Lcom/metamoji/lib/dialog/UtStandardString;

.field public static final enum NONE:Lcom/metamoji/lib/dialog/UtStandardString;

.field public static final enum OK:Lcom/metamoji/lib/dialog/UtStandardString;

.field public static final enum YES:Lcom/metamoji/lib/dialog/UtStandardString;

.field private static context:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private static table:Lcom/metamoji/lib/dialog/IUtStringTable;


# instance fields
.field private final resId:I


# direct methods
.method private static final synthetic $values()[Lcom/metamoji/lib/dialog/UtStandardString;
    .locals 8

    sget-object v0, Lcom/metamoji/lib/dialog/UtStandardString;->OK:Lcom/metamoji/lib/dialog/UtStandardString;

    sget-object v1, Lcom/metamoji/lib/dialog/UtStandardString;->CANCEL:Lcom/metamoji/lib/dialog/UtStandardString;

    sget-object v2, Lcom/metamoji/lib/dialog/UtStandardString;->CLOSE:Lcom/metamoji/lib/dialog/UtStandardString;

    sget-object v3, Lcom/metamoji/lib/dialog/UtStandardString;->DONE:Lcom/metamoji/lib/dialog/UtStandardString;

    sget-object v4, Lcom/metamoji/lib/dialog/UtStandardString;->YES:Lcom/metamoji/lib/dialog/UtStandardString;

    sget-object v5, Lcom/metamoji/lib/dialog/UtStandardString;->NO:Lcom/metamoji/lib/dialog/UtStandardString;

    sget-object v6, Lcom/metamoji/lib/dialog/UtStandardString;->BACK:Lcom/metamoji/lib/dialog/UtStandardString;

    sget-object v7, Lcom/metamoji/lib/dialog/UtStandardString;->NONE:Lcom/metamoji/lib/dialog/UtStandardString;

    filled-new-array/range {v0 .. v7}, [Lcom/metamoji/lib/dialog/UtStandardString;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 18
    new-instance v0, Lcom/metamoji/lib/dialog/UtStandardString;

    sget v1, Lcom/metamoji/lib/dialog/R$string;->Msg_OK:I

    const-string v2, "OK"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/metamoji/lib/dialog/UtStandardString;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/lib/dialog/UtStandardString;->OK:Lcom/metamoji/lib/dialog/UtStandardString;

    .line 19
    new-instance v0, Lcom/metamoji/lib/dialog/UtStandardString;

    const/4 v1, 0x1

    sget v2, Lcom/metamoji/lib/dialog/R$string;->Msg_CANCEL:I

    const-string v4, "CANCEL"

    invoke-direct {v0, v4, v1, v2}, Lcom/metamoji/lib/dialog/UtStandardString;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/lib/dialog/UtStandardString;->CANCEL:Lcom/metamoji/lib/dialog/UtStandardString;

    .line 20
    new-instance v0, Lcom/metamoji/lib/dialog/UtStandardString;

    const/4 v1, 0x2

    sget v2, Lcom/metamoji/lib/dialog/R$string;->Msg_CLOSE:I

    const-string v4, "CLOSE"

    invoke-direct {v0, v4, v1, v2}, Lcom/metamoji/lib/dialog/UtStandardString;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/lib/dialog/UtStandardString;->CLOSE:Lcom/metamoji/lib/dialog/UtStandardString;

    .line 21
    new-instance v0, Lcom/metamoji/lib/dialog/UtStandardString;

    const/4 v1, 0x3

    sget v2, Lcom/metamoji/lib/dialog/R$string;->Button_Done_J:I

    const-string v4, "DONE"

    invoke-direct {v0, v4, v1, v2}, Lcom/metamoji/lib/dialog/UtStandardString;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/lib/dialog/UtStandardString;->DONE:Lcom/metamoji/lib/dialog/UtStandardString;

    .line 22
    new-instance v0, Lcom/metamoji/lib/dialog/UtStandardString;

    const/4 v1, 0x4

    sget v2, Lcom/metamoji/lib/dialog/R$string;->Msg_YES:I

    const-string v4, "YES"

    invoke-direct {v0, v4, v1, v2}, Lcom/metamoji/lib/dialog/UtStandardString;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/lib/dialog/UtStandardString;->YES:Lcom/metamoji/lib/dialog/UtStandardString;

    .line 23
    new-instance v0, Lcom/metamoji/lib/dialog/UtStandardString;

    const/4 v1, 0x5

    sget v2, Lcom/metamoji/lib/dialog/R$string;->Msg_NO:I

    const-string v4, "NO"

    invoke-direct {v0, v4, v1, v2}, Lcom/metamoji/lib/dialog/UtStandardString;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/lib/dialog/UtStandardString;->NO:Lcom/metamoji/lib/dialog/UtStandardString;

    .line 24
    new-instance v0, Lcom/metamoji/lib/dialog/UtStandardString;

    const/4 v1, 0x6

    sget v2, Lcom/metamoji/lib/dialog/R$string;->Button_Back_J:I

    const-string v4, "BACK"

    invoke-direct {v0, v4, v1, v2}, Lcom/metamoji/lib/dialog/UtStandardString;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/lib/dialog/UtStandardString;->BACK:Lcom/metamoji/lib/dialog/UtStandardString;

    .line 25
    new-instance v0, Lcom/metamoji/lib/dialog/UtStandardString;

    const-string v1, "NONE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/metamoji/lib/dialog/UtStandardString;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/lib/dialog/UtStandardString;->NONE:Lcom/metamoji/lib/dialog/UtStandardString;

    invoke-static {}, Lcom/metamoji/lib/dialog/UtStandardString;->$values()[Lcom/metamoji/lib/dialog/UtStandardString;

    move-result-object v0

    sput-object v0, Lcom/metamoji/lib/dialog/UtStandardString;->$VALUES:[Lcom/metamoji/lib/dialog/UtStandardString;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/metamoji/lib/dialog/UtStandardString;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/metamoji/lib/dialog/UtStandardString$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/lib/dialog/UtStandardString$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/lib/dialog/UtStandardString;->Companion:Lcom/metamoji/lib/dialog/UtStandardString$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/metamoji/lib/dialog/UtStandardString;->resId:I

    return-void
.end method

.method public static final synthetic access$getContext$cp()Ljava/lang/ref/WeakReference;
    .locals 1

    .line 17
    sget-object v0, Lcom/metamoji/lib/dialog/UtStandardString;->context:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public static final synthetic access$getResId$p(Lcom/metamoji/lib/dialog/UtStandardString;)I
    .locals 0

    .line 17
    iget p0, p0, Lcom/metamoji/lib/dialog/UtStandardString;->resId:I

    return p0
.end method

.method public static final synthetic access$getTable$cp()Lcom/metamoji/lib/dialog/IUtStringTable;
    .locals 1

    .line 17
    sget-object v0, Lcom/metamoji/lib/dialog/UtStandardString;->table:Lcom/metamoji/lib/dialog/IUtStringTable;

    return-object v0
.end method

.method public static final synthetic access$setContext$cp(Ljava/lang/ref/WeakReference;)V
    .locals 0

    .line 17
    sput-object p0, Lcom/metamoji/lib/dialog/UtStandardString;->context:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static final synthetic access$setTable$cp(Lcom/metamoji/lib/dialog/IUtStringTable;)V
    .locals 0

    .line 17
    sput-object p0, Lcom/metamoji/lib/dialog/UtStandardString;->table:Lcom/metamoji/lib/dialog/IUtStringTable;

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/metamoji/lib/dialog/UtStandardString;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/metamoji/lib/dialog/UtStandardString;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static final setContext(Landroid/content/Context;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/lib/dialog/UtStandardString;->Companion:Lcom/metamoji/lib/dialog/UtStandardString$Companion;

    invoke-virtual {v0, p0}, Lcom/metamoji/lib/dialog/UtStandardString$Companion;->setContext(Landroid/content/Context;)V

    return-void
.end method

.method public static final setContext(Landroid/content/Context;Lcom/metamoji/lib/dialog/IUtStringTable;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/lib/dialog/UtStandardString;->Companion:Lcom/metamoji/lib/dialog/UtStandardString$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/metamoji/lib/dialog/UtStandardString$Companion;->setContext(Landroid/content/Context;Lcom/metamoji/lib/dialog/IUtStringTable;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/lib/dialog/UtStandardString;
    .locals 1

    const-class v0, Lcom/metamoji/lib/dialog/UtStandardString;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/lib/dialog/UtStandardString;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/lib/dialog/UtStandardString;
    .locals 1

    sget-object v0, Lcom/metamoji/lib/dialog/UtStandardString;->$VALUES:[Lcom/metamoji/lib/dialog/UtStandardString;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/lib/dialog/UtStandardString;

    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 1

    .line 31
    sget-object v0, Lcom/metamoji/lib/dialog/UtStandardString;->Companion:Lcom/metamoji/lib/dialog/UtStandardString$Companion;

    invoke-static {v0, p0}, Lcom/metamoji/lib/dialog/UtStandardString$Companion;->access$getId(Lcom/metamoji/lib/dialog/UtStandardString$Companion;Lcom/metamoji/lib/dialog/UtStandardString;)I

    move-result v0

    return v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 1

    .line 28
    sget-object v0, Lcom/metamoji/lib/dialog/UtStandardString;->Companion:Lcom/metamoji/lib/dialog/UtStandardString$Companion;

    invoke-static {v0, p0}, Lcom/metamoji/lib/dialog/UtStandardString$Companion;->access$getText(Lcom/metamoji/lib/dialog/UtStandardString$Companion;Lcom/metamoji/lib/dialog/UtStandardString;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
