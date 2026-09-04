.class final enum Lcom/metamoji/media/voice/ui/VcPlayerBar$VcTrackType;
.super Ljava/lang/Enum;
.source "VcPlayerBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/media/voice/ui/VcPlayerBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "VcTrackType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/media/voice/ui/VcPlayerBar$VcTrackType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/media/voice/ui/VcPlayerBar$VcTrackType;

.field public static final enum CHAPTER:Lcom/metamoji/media/voice/ui/VcPlayerBar$VcTrackType;

.field public static final enum RECORD:Lcom/metamoji/media/voice/ui/VcPlayerBar$VcTrackType;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/media/voice/ui/VcPlayerBar$VcTrackType;
    .locals 2

    .line 122
    sget-object v0, Lcom/metamoji/media/voice/ui/VcPlayerBar$VcTrackType;->RECORD:Lcom/metamoji/media/voice/ui/VcPlayerBar$VcTrackType;

    sget-object v1, Lcom/metamoji/media/voice/ui/VcPlayerBar$VcTrackType;->CHAPTER:Lcom/metamoji/media/voice/ui/VcPlayerBar$VcTrackType;

    filled-new-array {v0, v1}, [Lcom/metamoji/media/voice/ui/VcPlayerBar$VcTrackType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 123
    new-instance v0, Lcom/metamoji/media/voice/ui/VcPlayerBar$VcTrackType;

    const-string v1, "RECORD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/media/voice/ui/VcPlayerBar$VcTrackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/media/voice/ui/VcPlayerBar$VcTrackType;->RECORD:Lcom/metamoji/media/voice/ui/VcPlayerBar$VcTrackType;

    .line 124
    new-instance v0, Lcom/metamoji/media/voice/ui/VcPlayerBar$VcTrackType;

    const-string v1, "CHAPTER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/media/voice/ui/VcPlayerBar$VcTrackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/media/voice/ui/VcPlayerBar$VcTrackType;->CHAPTER:Lcom/metamoji/media/voice/ui/VcPlayerBar$VcTrackType;

    .line 122
    invoke-static {}, Lcom/metamoji/media/voice/ui/VcPlayerBar$VcTrackType;->$values()[Lcom/metamoji/media/voice/ui/VcPlayerBar$VcTrackType;

    move-result-object v0

    sput-object v0, Lcom/metamoji/media/voice/ui/VcPlayerBar$VcTrackType;->$VALUES:[Lcom/metamoji/media/voice/ui/VcPlayerBar$VcTrackType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 122
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/media/voice/ui/VcPlayerBar$VcTrackType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 122
    const-class v0, Lcom/metamoji/media/voice/ui/VcPlayerBar$VcTrackType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$VcTrackType;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/media/voice/ui/VcPlayerBar$VcTrackType;
    .locals 1

    .line 122
    sget-object v0, Lcom/metamoji/media/voice/ui/VcPlayerBar$VcTrackType;->$VALUES:[Lcom/metamoji/media/voice/ui/VcPlayerBar$VcTrackType;

    invoke-virtual {v0}, [Lcom/metamoji/media/voice/ui/VcPlayerBar$VcTrackType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/media/voice/ui/VcPlayerBar$VcTrackType;

    return-object v0
.end method
