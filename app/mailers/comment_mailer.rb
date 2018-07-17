class CommentMailer < ApplicationMailer
  default from: 'jelena.dpk96@gmail.com'
 
  def approved_email
    @comment = params[:comment]
    @user = @comment.user
    mail(to: "jelena@kolosek.com", subject: 'Your comment is approved')
  end

  def denied_email
    @comment = params[:comment]
    @user = @comment.user
    mail(to: "jelena@kolosek.com", subject: 'Your comment is denied')
  end
end
