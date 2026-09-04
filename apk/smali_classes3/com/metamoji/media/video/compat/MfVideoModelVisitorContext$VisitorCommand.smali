.class public final enum Lcom/metamoji/media/video/compat/MfVideoModelVisitorContext$VisitorCommand;
.super Ljava/lang/Enum;
.source "MfVideoModelVisitorContext.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/media/video/compat/MfVideoModelVisitorContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VisitorCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/media/video/compat/MfVideoModelVisitorContext$VisitorCommand;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0004\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/metamoji/media/video/compat/MfVideoModelVisitorContext$VisitorCommand;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "CollectTicket",
        "app"
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

.field private static final synthetic $VALUES:[Lcom/metamoji/media/video/compat/MfVideoModelVisitorContext$VisitorCommand;

.field public static final enum CollectTicket:Lcom/metamoji/media/video/compat/MfVideoModelVisitorContext$VisitorCommand;


# direct methods
.method private static final synthetic $values()[Lcom/metamoji/media/video/compat/MfVideoModelVisitorContext$VisitorCommand;
    .locals 1

    sget-object v0, Lcom/metamoji/media/video/compat/MfVideoModelVisitorContext$VisitorCommand;->CollectTicket:Lcom/metamoji/media/video/compat/MfVideoModelVisitorContext$VisitorCommand;

    filled-new-array {v0}, [Lcom/metamoji/media/video/compat/MfVideoModelVisitorContext$VisitorCommand;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 8
    new-instance v0, Lcom/metamoji/media/video/compat/MfVideoModelVisitorContext$VisitorCommand;

    const-string v1, "CollectTicket"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/media/video/compat/MfVideoModelVisitorContext$VisitorCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/media/video/compat/MfVideoModelVisitorContext$VisitorCommand;->CollectTicket:Lcom/metamoji/media/video/compat/MfVideoModelVisitorContext$VisitorCommand;

    invoke-static {}, Lcom/metamoji/media/video/compat/MfVideoModelVisitorContext$VisitorCommand;->$values()[Lcom/metamoji/media/video/compat/MfVideoModelVisitorContext$VisitorCommand;

    move-result-object v0

    sput-object v0, Lcom/metamoji/media/video/compat/MfVideoModelVisitorContext$VisitorCommand;->$VALUES:[Lcom/metamoji/media/video/compat/MfVideoModelVisitorContext$VisitorCommand;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/metamoji/media/video/compat/MfVideoModelVisitorContext$VisitorCommand;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/metamoji/media/video/compat/MfVideoModelVisitorContext$VisitorCommand;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/metamoji/media/video/compat/MfVideoModelVisitorContext$VisitorCommand;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/media/video/compat/MfVideoModelVisitorContext$VisitorCommand;
    .locals 1

    const-class v0, Lcom/metamoji/media/video/compat/MfVideoModelVisitorContext$VisitorCommand;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/media/video/compat/MfVideoModelVisitorContext$VisitorCommand;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/media/video/compat/MfVideoModelVisitorContext$VisitorCommand;
    .locals 1

    sget-object v0, Lcom/metamoji/media/video/compat/MfVideoModelVisitorContext$VisitorCommand;->$VALUES:[Lcom/metamoji/media/video/compat/MfVideoModelVisitorContext$VisitorCommand;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/media/video/compat/MfVideoModelVisitorContext$VisitorCommand;

    return-object v0
.end method
