.class Lkotlin/reflect/jvm/internal/impl/types/checker/TypeIntersector$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field private final arg$0:Ljava/util/Set;


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeIntersector$$Lambda$0;->arg$0:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeIntersector$$Lambda$0;->arg$0:Ljava/util/Set;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeIntersector;->accessor$TypeIntersector$lambda0(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
