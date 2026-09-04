.class public interface abstract Lcom/metamoji/nt/cabinet/user/LoginUserTaskCallBack;
.super Ljava/lang/Object;
.source "LoginUserTaskCallBack.java"


# static fields
.field public static final Key_Mailaddress:Ljava/lang/String; = "mailaddress"

.field public static final Key_Password:Ljava/lang/String; = "password"

.field public static final Key_SavePassword:Ljava/lang/String; = "savepassword"


# virtual methods
.method public abstract OnClickCancelButton_LoginUserTaskCallBack()V
.end method

.method public abstract OnClickForgotPassButton_LoginUserTaskCallBack(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract OnClickLoginButton_LoginUserTaskCallBack(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract OnClickReentryButton_LoginUserTaskCallBack()V
.end method

.method public abstract OnDestroyView_LoginUserTaskCallBack()V
.end method

.method public abstract OnDone_LoginUserTaskcallback()V
.end method
