.class public Lcom/metamoji/nt/direction/note/NtAllowEveryoneAnswerDirectionData;
.super Lcom/metamoji/ns/direction/NsDirectionData;
.source "NtAllowEveryoneAnswerDirectionData.java"


# static fields
.field private static final MMJNT_MODELPROPVALUE_ALLOW_EVERYONE_ANSWER_DIRECTION_VERSION_LATEST:I = 0x1

.field private static final MMJNT_MODELPROP_ALLOW_EVERYONE_ANSWER:Ljava/lang/String; = "alloweveryoneanswer"

.field private static final MMJNT_MODELTYPE_ALLOW_EVERYONE_ANSWER_DIRECTION:Ljava/lang/String; = "allow_everyone_answer_direction"


# instance fields
.field private _direction:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/metamoji/ns/direction/NsDirectionData;-><init>(Ljava/lang/Object;)V

    .line 36
    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/metamoji/nt/direction/note/NtAllowEveryoneAnswerDirectionData;->_direction:Ljava/util/Map;

    return-void
.end method

.method public static isTargetDirection(Ljava/lang/Object;)Z
    .locals 1

    .line 44
    const-string v0, "allow_everyone_answer_direction"

    invoke-static {p0, v0}, Lcom/metamoji/nt/direction/note/NtAllowEveryoneAnswerDirectionData;->isDictionaryDirection(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static newDirectionDataWithModelManager(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/nt/direction/note/NtAllowEveryoneAnswerDirectionData;
    .locals 2

    .line 25
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 26
    const-string v0, "!type"

    const-string v1, "allow_everyone_answer_direction"

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 27
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "!version"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    new-instance v0, Lcom/metamoji/nt/direction/note/NtAllowEveryoneAnswerDirectionData;

    invoke-direct {v0, p0}, Lcom/metamoji/nt/direction/note/NtAllowEveryoneAnswerDirectionData;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public allowEveryoneAnswer()Z
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/metamoji/nt/direction/note/NtAllowEveryoneAnswerDirectionData;->_direction:Ljava/util/Map;

    const-string v1, "alloweveryoneanswer"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setAllowEveryoneAnswer(Z)V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/metamoji/nt/direction/note/NtAllowEveryoneAnswerDirectionData;->_direction:Ljava/util/Map;

    const-string v1, "alloweveryoneanswer"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
